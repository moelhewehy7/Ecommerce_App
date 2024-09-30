import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';

class DiscountBadge extends StatelessWidget {
  const DiscountBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomRoundedContainer(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 20,
      radius: 12,
      color: Colors.green,
      child: Text(
        "26%",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
