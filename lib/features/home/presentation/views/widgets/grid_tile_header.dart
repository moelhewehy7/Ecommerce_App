import 'package:flutter/material.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/discount_badge.dart';
import 'package:icons_plus/icons_plus.dart';

class GridTileHeader extends StatelessWidget {
  const GridTileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const DiscountBadge(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.heart_bold,
              color: Colors.red,
            ))
      ],
    );
  }
}
