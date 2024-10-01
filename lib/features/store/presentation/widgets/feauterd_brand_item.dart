import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';

import 'package:icons_plus/icons_plus.dart';

class FeauterdBrandItem extends StatelessWidget {
  const FeauterdBrandItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      borderColor: Theme.of(context).colorScheme.onSurfaceVariant,
      showBorder: true,
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Brand(Brands.nike),
            const SizedBox(width: 12),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Nike",
                        style: AppStyles.styleRalewayExtraBold20.copyWith(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Icon(
                        Iconsax.verify_bold,
                        color: Colors.green,
                        size: 20,
                      )
                    ],
                  ),
                  Text(
                    "265 Products",
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.styleNunitoSansSemiBold14
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
