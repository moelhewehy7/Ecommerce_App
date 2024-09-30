import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/utils/app_styles.dart';

class GridTileFooter extends StatelessWidget {
  const GridTileFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Nike air shoes",
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleRalewayBold17,
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: [
            Text("Nike ",
                overflow: TextOverflow.ellipsis,
                style: AppStyles.stylePoppinsMedium14
                    .copyWith(color: Colors.grey)),
            const Icon(
              Icons.fiber_manual_record_sharp,
              color: Colors.black,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              r"$32,00",
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
