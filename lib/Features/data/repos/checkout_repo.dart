import 'package:dartz/dartz.dart';
import 'package:payment_gateway/Features/core/errors/failures.dart';
import 'package:payment_gateway/Features/data/modles/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
