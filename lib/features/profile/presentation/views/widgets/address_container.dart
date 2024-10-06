import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:icons_plus/icons_plus.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    super.key,
    required this.isSelected,
  });
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
        borderRadius: BorderRadius.circular(12),
        padding: const EdgeInsets.all(12),
        showBorder: true,
        borderColor: isSelected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onSurfaceVariant,
        color: isSelected
            ? Theme.of(context).colorScheme.primaryContainer
            : Theme.of(context).colorScheme.surface,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Mohamed elhewehy",
              style: AppStyles.styleRalewayBold17,
            ),
            isSelected
                ? Icon(Iconsax.tick_circle_bold,
                    color: Theme.of(context).colorScheme.primary)
                : const SizedBox()
          ]),
          const SizedBox(
            height: 8,
          ),
          Text(
            "+2001204905252",
            style: AppStyles.stylePoppinsMedium20.copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "123 Maplewood Street Apt 4B, Springfield, IL 62701, United State",
            style: AppStyles.stylePoppinsMedium20.copyWith(
              fontSize: 14,
            ),
          ),
        ]));
  }
}
