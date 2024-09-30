import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';

class DiscountBadge extends StatelessWidget {
  const DiscountBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 20,
      borderRadius: BorderRadius.circular(12),
      color: Colors.green,
      child: const Text(
        "26%",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
