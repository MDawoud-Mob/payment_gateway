import 'package:dartz/dartz.dart';
import 'package:payment_gateway/Features/core/errors/failures.dart';
import 'package:payment_gateway/Features/core/utils/stripe_service.dart';
import 'package:payment_gateway/Features/data/modles/payment_intent_input_model.dart';
import 'package:payment_gateway/Features/data/repos/checkout_repo.dart';

class CheckRepoImpl extends CheckoutRepo {
  final StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
