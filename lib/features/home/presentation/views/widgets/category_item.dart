import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_tile_header.dart';
import 'category_product_description.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      height: 172,
      width: 360,
      color: Theme.of(context).colorScheme.surfaceBright,
      borderRadius: BorderRadius.circular(12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRoundedContainer(
            width: 180,
            height: 172,
            color: Theme.of(context).colorScheme.surfaceContainerLow,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(24)),
            padding: const EdgeInsets.all(8),
            child: GridTile(
                header: Text("asfdasf"),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/NikeWildhorse.png",
                  ),
                )),
          ),
          const SizedBox(
            width: 6,
          ),
          const Flexible(
            child: CategoryProductDescription(),
          )
        ],
      ),
    );
  }
}
