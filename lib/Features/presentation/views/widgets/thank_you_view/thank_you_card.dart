import 'package:flutter/material.dart';
import 'package:payment_gateway/Features/core/utils/style.dart';

import '../MyCart/cart_infi_item.dart';
import '../MyCart/my_cart_total_price.dart';
import 'card_info.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding:const EdgeInsets.only(top: 56, left: 15, right: 15),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text('Your transaction was successful',
                textAlign: TextAlign.center, style: Styles.style20),
          const  SizedBox(
              height: 15,
            ),
        const    OrderInfoItem(
              title: 'Data',
              value: '01/24/2023',
            ),
          const  SizedBox(
              height: 5,
            ),
        const    OrderInfoItem(
              title: 'Time',
              value: '10:15 Am',
            ),
        const    SizedBox(
              height: 5,
            ),
        const    OrderInfoItem(
              title: 'To',
              value: 'Sam Louis',
            ),
        const    Divider(
              thickness: 2,
              height: 20,
            ),
        const    TotalPrice(
              title: 'Total',
              value: r'$ 50.97',
            ),
        const    SizedBox(height: 30),
            const CardInfo(),
        const    SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/iconcard.jpg',
                  fit: BoxFit.scaleDown,
                  height: 60,
                ),
                Container(
                width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:const BorderSide(width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                child:Center(
                      child: Text(
                    'PAID',
                    style: Styles.style24,
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
