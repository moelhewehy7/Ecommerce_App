import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';

import '../../../../../core/utils/app_styles.dart';

class IntroductionFooter extends StatelessWidget {
  const IntroductionFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomFilledButton(
          text: "Let's get started",
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I already have an account",
              style: AppStyles.styleNunitoSansRegular15.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              width: 16,
            ),
            IconButton.filled(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward))
          ],
        ),
      ],
    );
  }
}
