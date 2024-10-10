import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_grid_view.dart';
import 'package:flutter_application2/core/widgets/product_detail/product_detail.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_vertical_item.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomGridView(
      child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ProductDetail()));
          },
          child: const GridVerticalItem()),
    );
  }
}
