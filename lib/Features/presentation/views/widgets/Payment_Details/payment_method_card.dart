import 'package:flutter/material.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard(
      {super.key, required this.isActive, required this.image});
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.50,
              color: isActive
                  ?const Color(0xFF34A853)
                  :const Color.fromARGB(255, 227, 231, 228)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Stack(
        children: [
          Center(
              child: Image.asset(
            image,
            fit: BoxFit.scaleDown,
          )),
        ],
      ),
    );
  }
}
