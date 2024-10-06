import 'package:flutter/material.dart';

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer(
      {super.key,
      this.height,
      this.padding,
      this.width,
      this.borderRadius,
      required this.child,
      required this.color,
      this.showBorder = false,
      this.borderColor = Colors.black});
  final double? height, width;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Color color;
  final Widget child;
  final bool showBorder;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: showBorder ? Border.all(color: borderColor) : null,
        color: color,
        borderRadius: borderRadius, // Optional rounded corners
      ),
      child: child,
    );
  }
}
