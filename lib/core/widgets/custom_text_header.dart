import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class CustomTextheader extends StatelessWidget {
  const CustomTextheader({
    super.key,
    required this.title,
    required this.showTextButton,
    required this.titleColor,
  });
  final String title;
  final bool showTextButton;
  final Color titleColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: AppStyles.styleRalewayeBold20.copyWith(color: titleColor)),
        if (showTextButton)
          TextButton(
              onPressed: () {},
              child: Text(
                "View All",
                style: AppStyles.styleRalewayeBold14
                    .copyWith(color: Theme.of(context).colorScheme.surfaceTint),
              ))
      ],
    );
  }
}