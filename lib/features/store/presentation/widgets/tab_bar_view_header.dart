import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/features/store/presentation/widgets/feauterd_brand_item.dart';

import '../../../home/presentation/views/widgets/rounded_image.dart';

class TabBarViewheader extends StatelessWidget {
  const TabBarViewheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      borderColor: Theme.of(context).colorScheme.onSurfaceVariant,
      padding: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(12),
      showBorder: true,
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          const FeauterdBrandItem(
            innerpadding: 0,
            showBorder: false,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: List.generate(3, (index) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 3, left: 3),
                  child: RoundedImage(
                      color: Theme.of(context).colorScheme.surfaceContainerHigh,
                      image: "assets/images/NikeWildhorse.png"),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
