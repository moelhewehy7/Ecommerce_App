import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({
    super.key,
    required this.leading,
    required this.title,
  });
  final String leading, title;
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      children: [
        TextSpan(
          text: "$leading : ",
          style: AppStyles.styleRalewayBold14.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.outline),
        ),
        TextSpan(
          text: title,
          style: AppStyles.stylePoppinsMedium20
              .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ],
    ));
  }
}
