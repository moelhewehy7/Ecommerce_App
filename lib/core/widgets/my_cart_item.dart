import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/quantity_adjust_row.dart';

import 'custom_rounded_container.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomRoundedContainer(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 110,
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        child: Image.asset("assets/images/NikeWildhorse.png"),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nike ",
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.stylePoppinsMedium14.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant)),
                const SizedBox(
                  width: 2,
                ),
                const Icon(
                  shadows: [Shadow(color: Colors.white, blurRadius: 8)],
                  Icons.fiber_manual_record_sharp,
                  color: Colors.black,
                )
              ],
            ),
            const Text(
              "Nike air shoes ",
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleRalewayBold17,
            ),
            Text.rich(TextSpan(
              children: [
                TextSpan(
                  text: "color : ",
                  style: AppStyles.styleRalewayBold14.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.outline),
                ),
                TextSpan(
                  text: "Black ",
                  style: AppStyles.stylePoppinsMedium20
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 15),
                ),
                TextSpan(
                  text: "size : ",
                  style: AppStyles.styleRalewayBold14.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.outline),
                ),
                TextSpan(
                  text: "Eu 42",
                  style: AppStyles.stylePoppinsMedium20
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 15),
                ),
              ],
            )),
            const SizedBox(
              height: 8,
            ),
            const QuantityAdjustRow(),
          ],
        ),
      )
    ]);
  }
}
