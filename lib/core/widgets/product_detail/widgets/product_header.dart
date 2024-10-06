import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/custom_text_rich.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/app_styles.dart';
import 'price_row.dart';
import 'rating_header.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RatingHeader(),
        const SizedBox(
          height: 16,
        ),
        const PriceRow(),
        const SizedBox(
          height: 16,
        ),
        Text(
          "Black Acer laptop",
          style: AppStyles.stylePoppinsMedium20.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Theme.of(context).colorScheme.onSurface),
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomTextRich(
          leading: "Status",
          title: "in Stock",
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Brand(Brands.nike),
            const SizedBox(
              width: 6,
            ),
            Text(
              "Acer",
              style: AppStyles.styleRalewayBold17.copyWith(
                  fontSize: 17, color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(
              width: 6,
            ),
            const Icon(
              Icons.fiber_manual_record_sharp,
              color: Colors.black,
              size: 18,
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
