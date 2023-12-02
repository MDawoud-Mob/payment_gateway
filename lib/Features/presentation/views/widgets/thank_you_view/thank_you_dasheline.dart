import 'package:flutter/material.dart';

class DasheLine extends StatelessWidget {
  const DasheLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 140,
      left: 30,
      right: 30,
      child: Row(
        children: List.generate(
            30,
            (index) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      height: 2.5,
                      color: const Color.fromARGB(255, 196, 38, 38),
                    ),
                  ),
                )),
      ),
    );
  }
}
