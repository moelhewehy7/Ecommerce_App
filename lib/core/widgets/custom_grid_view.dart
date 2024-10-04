import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.child,
    this.height = 300,
    this.physics = const NeverScrollableScrollPhysics(),
    this.itemCount = 6,
  });
  final Widget child;
  final double height;
  final ScrollPhysics? physics;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: height,
          mainAxisSpacing: 5,
          crossAxisSpacing: 15,
          crossAxisCount: 2),
      itemCount: itemCount,
      shrinkWrap: true,
      physics: physics,
      itemBuilder: (itemBuilder, index) => child,
    );
  }
}
