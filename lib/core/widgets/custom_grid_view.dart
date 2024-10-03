import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.child,
    this.height = 300,
    this.physics = const NeverScrollableScrollPhysics(),
  });
  final Widget child;
  final double height;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: height,
          mainAxisSpacing: 5,
          crossAxisSpacing: 15,
          crossAxisCount: 2),
      itemCount: 6,
      shrinkWrap: true,
      physics: physics,
      itemBuilder: (itemBuilder, index) => child,
    );
  }
}
