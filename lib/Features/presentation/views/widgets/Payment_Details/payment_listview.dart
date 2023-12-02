import 'package:flutter/material.dart';

import 'payment_method_card.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> paymentImages = const [
    'assets/images/card.jpg',
    'assets/images/Group.jpg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentImages.length,
        itemBuilder: (c, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: () {
                activeIndex = i;
                setState(() {});
              },
              child: PaymentMethodCard(
                isActive: activeIndex == i,
                image: paymentImages[i],
              ),
            ),
          );
        },
      ),
    );
  }
}
