import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomCartCounter extends StatelessWidget {
  const CustomCartCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.shopping_bag_bold,
              color: Theme.of(context).colorScheme.surface,
            )),
        Positioned(
          top: 0,
          right: 2,
          child: Container(
            height: 20,
            width: 20,
            decoration: ShapeDecoration(
                color: Theme.of(context).colorScheme.onSecondaryFixedVariant,
                shape: CircleBorder(side: BorderSide.none)),
            child: Center(
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
