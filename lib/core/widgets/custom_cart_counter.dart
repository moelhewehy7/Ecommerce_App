import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'my_cart.dart';

class CustomCartCounter extends StatelessWidget {
  const CustomCartCounter({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Badge.count(
        textColor: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.onSecondaryFixedVariant,
        count: 99,
        child: Icon(
          Iconsax.shopping_bag_bold,
          color: color,
        ),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyCart()));
      },
    );
  }
}
