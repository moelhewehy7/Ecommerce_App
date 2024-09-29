import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.outlineVariant,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      duration: const Duration(milliseconds: 300),
    );
  }
}
