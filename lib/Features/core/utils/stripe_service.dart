import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/Features/core/utils/api_keys.dart';
import 'package:payment_gateway/Features/core/utils/api_service.dart';
import 'package:payment_gateway/Features/data/modles/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:payment_gateway/Features/data/modles/init_pament_sheet_input_model.dart';
import 'package:payment_gateway/Features/data/modles/payment_intent_input_model.dart';
import 'package:payment_gateway/Features/data/modles/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: Api.url,
        token: Api.secretKay);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet(
      {required InitpaymentSheetInputModel initpaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: initpaymentSheetInputModel.clientSecret,
            customerEphemeralKeySecret:
                initpaymentSheetInputModel.ephemeralKeySecret,
            customerId: initpaymentSheetInputModel.customId,
            merchantDisplayName: 'dawoud'));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var ephemeralKeyModel = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var initpaymentSheetInputModel = InitpaymentSheetInputModel(
        clientSecret: paymentIntentModel.clientSecret!,
        customId: paymentIntentInputModel.customerId,
        ephemeralKeySecret: ephemeralKeyModel.secret!);
    await initPaymentSheet(
        initpaymentSheetInputModel: initpaymentSheetInputModel);
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
        body: {'customer': customerId},
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        token: Api.secretKay,
        headers: {
          'Authorization': "Bearer ${Api.secretKay}",
          'Stripe-Version': '2023-10-16'
        });
    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKey;
  }
}
