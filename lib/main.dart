import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/Features/core/utils/api_keys.dart';

import 'Features/presentation/views/widgets/MyCart/my_cart_viewr.dart';

void main() {
  Stripe.publishableKey = Api.publishableKey;
  runApp(const Checkout());
}

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
