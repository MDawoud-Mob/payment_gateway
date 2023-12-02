import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_gateway/Features/presentation/manger/cubite/payment_cubit.dart';
import '../../../../data/repos/checkout_repo_impl.dart';
import 'cart_infi_item.dart';
import 'elevated_button.dart';
import 'my_cart_total_price.dart';
import 'payment_method_bottom_sheet.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/Group 6.jpg',
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal:',
            value: r'$ 42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount:',
            value: r'$ 0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shopping:',
            value: r'$ 8',
          ),
          const Divider(
            height: 30,
            thickness: 2,
            endIndent: 20,
            indent: 20,
          ),
          const TotalPrice(
            title: 'Total:',
            value: r'$ 50.97',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'Complete Payment',
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  builder: (context) {
                    return BlocProvider(
                        create: (context) => PaymentCubit(CheckRepoImpl()),
                        child:const PaymentMethodDottomShet());
                  });
            },
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
