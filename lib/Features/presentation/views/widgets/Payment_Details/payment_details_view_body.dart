import 'dart:developer';

import 'package:flutter/material.dart';

import '../MyCart/elevated_button.dart';
import '../thank_you_view/thank_you_view.dart';
import 'payment_listview.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(children: [
          const PaymentMethodListView(),
          const Spacer(),
          GestureDetector(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                log('++++++++++++++paymeyt');
              } else {
                AutovalidateMode.always;
                setState(() {});
              }
            },
            child: CustomButton(
              title: 'Pay',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThankYouView()));
              },
            ),
          ),
          const SizedBox(
            height: 17,
          ),
        ]));
  }
}
