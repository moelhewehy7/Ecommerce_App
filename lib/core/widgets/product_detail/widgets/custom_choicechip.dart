import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onSelected,
  });
  final Color color;
  final bool isSelected;
  final Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: EdgeInsets.zero,
      avatar: isSelected
          ? CustomRoundedContainer(
              borderRadius: BorderRadius.circular(20),
              height: 30,
              width: 30,
              color: color,
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ))
          : CustomRoundedContainer(
              borderRadius: BorderRadius.circular(20),
              height: 30,
              width: 30,
              color: color,
              child: const SizedBox()),
      side: BorderSide.none,
      label: const Text(''), // Empty label for a cleaner look

      selected: isSelected,
      onSelected: onSelected, showCheckmark: false,
      backgroundColor: color,
      selectedColor: color,
      shape: const CircleBorder(),
      labelPadding: EdgeInsets.zero,
    );
  }
}
