import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.child,
    this.height = 300,
  });
  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: height,
          mainAxisSpacing: 5,
          crossAxisSpacing: 15,
          crossAxisCount: 2),
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (itemBuilder, index) => child,
    );
  }
}
