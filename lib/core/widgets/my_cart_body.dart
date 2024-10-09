import 'package:flutter/material.dart';

import 'my_cart_item.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 16,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 120,
          child: MyCartItem(),
        );
      },
    );
  }
}
