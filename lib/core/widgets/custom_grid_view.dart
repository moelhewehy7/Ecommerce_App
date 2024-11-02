import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    this.height = 300,
    this.physics = const NeverScrollableScrollPhysics(),
    this.itemCount = 6,
    required this.itemBuilder,
  });

  final double height;
  final ScrollPhysics? physics;
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: height,
          mainAxisSpacing: 10,
          crossAxisSpacing: 15,
          crossAxisCount: 2),
      itemCount: itemCount,
      shrinkWrap: true,
      physics: physics,
      itemBuilder: itemBuilder,
    );
  }
}
