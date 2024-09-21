import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 17, bottom: 13),
            child: Text("Let's get started",
                style: AppStyles.styleNunitoSansLight22),
          )),
    );
  }
}
