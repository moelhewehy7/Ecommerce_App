import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:icons_plus/icons_plus.dart';

class CategoryProductDescription extends StatelessWidget {
  const CategoryProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
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
                      style: AppStyles.stylePoppinsMedium14.copyWith(
                          color:
                              Theme.of(context).colorScheme.onSurfaceVariant)),
                  const Icon(
                    Icons.fiber_manual_record_sharp,
                    color: Colors.black,
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                r"$32,00",
                style: AppStyles.styleRalewayBold17.copyWith(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              const SizedBox(width: 20),
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
      ),
    );
  }
}
