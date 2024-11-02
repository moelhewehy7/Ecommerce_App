import 'package:flutter/material.dart';

import '../../../../features/home/presentation/views/widgets/discount_badge.dart';
import '../../../utils/app_styles.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("asdasd"),
        const SizedBox(
          width: 8,
        ),
        Row(
          children: [
            Text(
              r"$122",
              style: AppStyles.stylePoppinsMedium20.copyWith(
                  fontWeight: FontWeight.w700,
                  decorationThickness: 2,
                  fontSize: 16,
                  decoration: TextDecoration.lineThrough,
                  decorationColor:
                      Theme.of(context).colorScheme.surfaceContainerHighest),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              r"$85",
              style: AppStyles.stylePoppinsMedium20
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 22),
            )
          ],
        ),
      ],
    );
  }
}
