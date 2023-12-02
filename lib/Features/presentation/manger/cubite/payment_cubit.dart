import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_gateway/Features/data/modles/payment_intent_input_model.dart';
import 'package:payment_gateway/Features/presentation/manger/cubite/payment_state.dart';

import '../../../data/repos/checkout_repo.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());
    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((l) => emit(PaymentFailure(l.errorMessage)),
        (r) => emit(PaymentSuccess()));
  }
}
