import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:icons_plus/icons_plus.dart';

class RatingHeader extends StatelessWidget {
  const RatingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Iconsax.star_bold,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "3.9 (299)",
          style: AppStyles.stylePoppinsMedium20.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 17),
        ),
        const Spacer(),
        const Icon(
          Icons.share,
        ),
      ],
    );
  }
}
