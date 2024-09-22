import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:flutter_application2/core/widgets/text_fields.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const BasicTextForm(),
        const SizedBox(
          height: 8,
        ),
        const PassWordTextForm(),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                value: true,
                onChanged: (value) {}),
            const SizedBox(
              width: 8,
            ),
            const Text("Remember me", style: AppStyles.stylePoppinsMedium14),
            const Spacer(),
            TextButton(onPressed: () {}, child: const Text("Forgot password?"))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomFilledButton(text: "Login"),
        const SizedBox(
          height: 12,
        ),
        const CustomOutLinedButton(text: "Create account"),
      ],
    ));
  }
}
