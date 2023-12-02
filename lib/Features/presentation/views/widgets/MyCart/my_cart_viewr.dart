import 'package:flutter/material.dart';
import 'package:payment_gateway/Features/core/utils/style.dart';
import 'package:payment_gateway/Features/presentation/views/widgets/MyCart/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/images/Arrow 1.jpg'),
        centerTitle: true,
        title: Text(
          'My Cart',
          style: Styles.style25,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}
