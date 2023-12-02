import 'package:flutter/material.dart';
import 'package:payment_gateway/Features/core/utils/style.dart';

import '../MyCart/my_cart_viewr.dart';
import 'payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MyCartView()));
            },
            child: Image.asset('assets/images/Arrow 1.jpg')),
        centerTitle: true,
        title: Text(
          'Payment Details',
          style: Styles.style25,
        ),
      ),
      body: const PaymentDetailsBody(),
    );
  }
}
