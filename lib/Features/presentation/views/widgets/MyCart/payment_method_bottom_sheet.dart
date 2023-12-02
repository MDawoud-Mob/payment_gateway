import 'package:flutter/material.dart';

import '../Payment_Details/payment_listview.dart';
import 'custom_button_bloc_consumer.dart';

class PaymentMethodDottomShet extends StatelessWidget {
  const PaymentMethodDottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodListView(),
          SizedBox(
            height: 20,
          ),
          CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}
