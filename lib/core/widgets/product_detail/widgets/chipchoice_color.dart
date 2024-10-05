import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/custom_choicechip.dart';

class ChoiceChipColor extends StatefulWidget {
  const ChoiceChipColor({
    super.key,
  });

  @override
  State<ChoiceChipColor> createState() => _ChoiceChipColorState();
}

class _ChoiceChipColorState extends State<ChoiceChipColor> {
  List<Color> colors = [Colors.red, Colors.blue, Colors.green];

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return CustomChoiceChip(
          onSelected: (p0) {
            setState(() {
              selectedIndex = index;
            });
          },
          isSelected: selectedIndex == index,
          color: colors[index],
        );
      }),
    );
  }
}
