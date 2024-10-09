import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/my_orders_tag.dart';
import 'package:icons_plus/icons_plus.dart';

class MyOrdersItem extends StatelessWidget {
  const MyOrdersItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      padding: const EdgeInsets.only(right: 28, left: 16, top: 16, bottom: 16),
      showBorder: true,
      borderColor: Theme.of(context).colorScheme.outline.withOpacity(0.5),
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Iconsax.ship_outline),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Processing",
                      style: AppStyles.styleRalewayBold17.copyWith(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary)),
                  const SizedBox(
                    height: 4,
                  ),
                  Text("07 Jul 2022",
                      style: AppStyles.styleRalewayBold17.copyWith()),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.arrow_right_3_outline,
                  size: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            children: [
              MyOrdersTag(
                icon: Iconsax.tag_outline,
                orderTitle: "Order ID",
                orderSubtitle: "CWT123456",
              ),
              Spacer(
                flex: 3,
              ),
              MyOrdersTag(
                icon: Iconsax.calendar_1_outline, // Callender
                orderTitle: "Shipping Date",
                orderSubtitle: "09 Jul 2022",
              ),
              Spacer(
                flex: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
