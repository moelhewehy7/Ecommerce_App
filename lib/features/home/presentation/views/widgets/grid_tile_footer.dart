import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/utils/app_styles.dart';
import 'package:intl/intl.dart';

class GridTileFooter extends StatelessWidget {
  GridTileFooter({
    super.key,
    required this.title,
    required this.brand,
    required this.price,
  });
  final String title, brand;
  final double price;
  final currencyFormatter = NumberFormat.currency(symbol: '\$');
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleRalewayBold17,
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text("$brand ",
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.stylePoppinsMedium14.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant)),
                const Icon(
                  Icons.fiber_manual_record_sharp,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              currencyFormatter.format(price),
              style: AppStyles.styleRalewayBold17.copyWith(fontSize: 20),
              textAlign: TextAlign.left,
            ),
            IconButton.filledTonal(
                style: IconButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)))),
                onPressed: () {},
                icon: const Icon(Iconsax.add_outline))
          ],
        )
      ],
    );
  }
}
