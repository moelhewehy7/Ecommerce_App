import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    required this.text,
    super.key,
    required this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
          style: FilledButton.styleFrom(
              shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 10),
            child: Text(text,
                style: AppStyles.styleNunitoSansMedium19.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary)),
          )),
    );
  }
}

class CustomOutLinedButton extends StatelessWidget {
  const CustomOutLinedButton({
    required this.text,
    required this.onPressed,
    super.key,
  });
  final void Function()? onPressed;
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
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 10),
            child: Text(text,
                style: AppStyles.styleNunitoSansMedium19
                    .copyWith(color: Theme.of(context).colorScheme.secondary)),
          )),
    );
  }
}

class CustomPlatformButton extends StatelessWidget {
  const CustomPlatformButton({
    super.key,
    required this.brand,
  });
  final String brand;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 55,
      child: IconButton(
        style: IconButton.styleFrom(
            shape: const CircleBorder(side: BorderSide(color: Colors.grey))),
        onPressed: () {},
        icon: Brand(
          brand,
          size: 28,
        ),
      ),
    );
  }
}
