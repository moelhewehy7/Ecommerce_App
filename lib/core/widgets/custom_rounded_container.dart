import 'package:flutter/material.dart';

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer(
      {super.key,
      this.height,
      this.padding,
      this.width,
      this.borderRadius,
      required this.child,
      required this.color});
  final double? height, width;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius, // Optional rounded corners
      ),
      child: child,
    );
  }
}
