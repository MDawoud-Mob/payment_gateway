import 'package:flutter/material.dart';
import 'package:payment_gateway/Features/presentation/views/widgets/thank_you_view/thank_you_card.dart';

import '../MyCart/my_cart_viewr.dart';
import 'thank_you_dasheline.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: 35,
          left: 15,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => const MyCartView()));
              },
              child: Image.asset('assets/images/Arrow 1.jpg'))),
      const Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 70, bottom: 10),
          child: Stack(clipBehavior: Clip.none, children: [
            ThankYouCard(),
            DasheLine(),
            Positioned(
                left: -20,
                bottom: 120,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            Positioned(
                right: -20,
                bottom: 120,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            Positioned(
                top: -50,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      size: 45,
                      color: Colors.white,
                    ),
                  ),
                ))
          ]),
        ),
      ),
    ]);
  }
}
