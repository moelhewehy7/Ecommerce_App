import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import '../utils/app_styles.dart';
import 'my_cart_item.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          showBackArow: true,
          title: Text("My Cart",
              style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22))),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        shrinkWrap: true,
        itemCount: 8,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return const Expanded(
            child: MyCartItem(),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomFilledButton(
            text: r"Proceed to checkout $245.0", onPressed: () {}),
      ),
    );
  }
}
