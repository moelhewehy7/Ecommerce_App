import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 10),
            child: Text(text, style: AppStyles.styleNunitoSansLight16),
          )),
    );
  }
}

class CustomOutLinedButton extends StatelessWidget {
  const CustomOutLinedButton({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 10),
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
          )),
    );
  }
}
