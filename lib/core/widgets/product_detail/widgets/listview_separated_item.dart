import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';

class ListViewSeparatedItem extends StatelessWidget {
  const ListViewSeparatedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
        width: 90,
        showBorder: true,
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/acer_laptop_var_4.png",
          ),
        ));
  }
}
