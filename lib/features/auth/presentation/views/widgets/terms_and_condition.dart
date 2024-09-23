import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class TermsAndConditionRow extends StatelessWidget {
  const TermsAndConditionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        const SizedBox(
          width: 12,
        ),
        RichText(
            text: TextSpan(
                style: AppStyles.stylePoppinsMedium14
                    .copyWith(color: Theme.of(context).colorScheme.outline),
                children: [
              const TextSpan(text: "i agree to "),
              TextSpan(
                text: "Privacy Policy ",
                style: AppStyles.stylePoppinsMedium14.copyWith(
                    decoration: TextDecoration.underline,
                    decorationThickness: 1.5,
                    decorationColor: Theme.of(context).colorScheme.secondary,
                    color: Theme.of(context).colorScheme.onTertiary),
              ),
              const TextSpan(text: "and "),
              TextSpan(
                text: "Terms of use",
                style: AppStyles.stylePoppinsMedium14.copyWith(
                    decoration: TextDecoration.underline,
                    decorationThickness: 1.5,
                    decorationColor: Theme.of(context).colorScheme.secondary,
                    color: Theme.of(context).colorScheme.onTertiary),
              ),
            ])),
      ],
    );
  }
}
