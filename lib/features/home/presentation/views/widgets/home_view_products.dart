import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_grid_view.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_vertical_item.dart';

class HomeViewProducts extends StatelessWidget {
  const HomeViewProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomGridView(
        child: GridVerticalItem(),
      ),
    );
  }
}
