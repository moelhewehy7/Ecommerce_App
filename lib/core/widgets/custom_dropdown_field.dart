import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomDropDownField extends StatelessWidget {
  const CustomDropDownField({
    super.key,
  });

  static const List<String> sortItems = <String>[
    "Name",
    "Higher Price",
    "Lower Price",
    "Newest",
    "Popularity"
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      onChanged: (value) {},
      value: sortItems[0],
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIcon: const Icon(
          Iconsax.sort_outline,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context)
                .colorScheme
                .onSurfaceVariant, // Change this to the desired color
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      items: List.generate(
          sortItems.length,
          (index) => DropdownMenuItem(
              value: sortItems[index], child: Text(sortItems[index]))),
    );
  }
}
