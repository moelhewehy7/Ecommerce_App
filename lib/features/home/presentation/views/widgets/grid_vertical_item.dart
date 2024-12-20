import 'package:flutter/material.dart';

import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_tile_footer.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_tile_header.dart';

import '../../../../../core/models/product_model.dart';

class GridVerticalItem extends StatelessWidget {
  const GridVerticalItem({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomRoundedContainer(
        color: Theme.of(context).colorScheme.surfaceBright,
        width: 220,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomRoundedContainer(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              height: 180,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24)),
              padding: const EdgeInsets.all(8),
              child: GridTile(
                  header: GridTileHeader(
                    productModel: productModel,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(productModel.imageUrl),
                  )),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: GridTileFooter(
                  title: productModel.title,
                  brand: productModel.brand,
                  price: productModel.price),
            )
          ],
        ),
      ),
    ]);
  }
}
