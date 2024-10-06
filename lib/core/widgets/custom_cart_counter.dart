import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomCartCounter extends StatelessWidget {
  const CustomCartCounter({
    super.key,
    required this.color,
    this.onPressed,
  });
  final Color color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag_bold,
              color: color,
            )),
        Positioned(
          top: 0,
          right: 2,
          child: Container(
            height: 20,
            width: 20,
            decoration: ShapeDecoration(
                color: Theme.of(context).colorScheme.onSecondaryFixedVariant,
                shape: const CircleBorder(side: BorderSide.none)),
            child: const Center(
                child: Text(
              "2",
              style: TextStyle(fontSize: 12, color: Colors.white),
            )),
          ),
        )
      ],
    );
  }
}
