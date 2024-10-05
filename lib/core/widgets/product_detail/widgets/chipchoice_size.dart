import 'package:flutter/material.dart';

class ChoiceChipSize extends StatefulWidget {
  const ChoiceChipSize({
    super.key,
  });

  @override
  State<ChoiceChipSize> createState() => _ChoiceChipSizeState();
}

class _ChoiceChipSizeState extends State<ChoiceChipSize> {
  int? _selectedIndex = -1;
  List<String> sizes = ["S", "M", "L", "XL"];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 7,
      children: List<Widget>.generate(
        sizes.length,
        (int index) {
          return ChoiceChip(
            label: Text(sizes[index]),
            selected: _selectedIndex == index,
            onSelected: (bool selected) {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        },
      ).toList(),
    );
  }
}
