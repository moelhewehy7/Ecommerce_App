import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/text_fields.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/widgets/custom_buttons.dart';
import 'terms_and_condition.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: BasicTextForm(
              text: "First Name",
              icon: Iconsax.user_outline,
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: BasicTextForm(
              text: "Last Name",
              icon: Iconsax.user_outline,
            )),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const BasicTextForm(
          text: "Username",
          icon: Iconsax.user_edit_outline,
        ),
        const SizedBox(
          height: 12,
        ),
        const BasicTextForm(
          text: "E-Mail",
          icon: Iconsax.direct_right_outline,
        ),
        const SizedBox(
          height: 12,
        ),
        const BasicTextForm(
          text: "Phone Number",
          icon: Iconsax.call_outline,
        ),
        const SizedBox(
          height: 12,
        ),
        const PassWordTextForm(),
        const SizedBox(
          height: 16,
        ),
        const TermsAndConditionRow(),
        const SizedBox(
          height: 18,
        ),
        CustomFilledButton(onPressed: () {}, text: "Create Account"),
      ],
    );
  }
}
