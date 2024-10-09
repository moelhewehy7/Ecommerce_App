import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:icons_plus/icons_plus.dart';

class ShippingAddressSection extends StatelessWidget {
  const ShippingAddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextheader(
            textButtonTitle: "Change",
            title: "Shipping Address",
            showTextButton: true,
            titleColor: Theme.of(context).colorScheme.onSurface),
        const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mohamed elhewehy",
                style: AppStyles.styleRalewayBold17,
              ),
            ]),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const Icon(
              Iconsax.call_bold,
              size: 20,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "+2001204905252",
              style: AppStyles.stylePoppinsMedium20.copyWith(
                fontSize: 14,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(children: [
          const Icon(
            Iconsax.location_add_bold,
            size: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              overflow: TextOverflow.ellipsis,
              "123 Maplewood Street Apt 4B, Springfield, IL 62701, United State",
              style: AppStyles.stylePoppinsMedium20.copyWith(
                fontSize: 14,
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
