import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:icons_plus/icons_plus.dart';

class PassWordTextForm extends StatelessWidget {
  const PassWordTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Iconsax.password_check_outline,
            color: Color(0xFF717171)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintText: "Password",
        suffixIcon: IconButton(
            onPressed: () {}, icon: const Icon(Iconsax.eye_slash_outline)),
        hintStyle: AppStyles.stylePoppinsMedium14
            .copyWith(color: const Color(0xFF717171)),
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class BasicTextForm extends StatelessWidget {
  const BasicTextForm({
    super.key,
    required this.text,
    this.color,
    required this.icon,
  });
  final String text;
  final IconData icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: color,
        prefixIcon: Icon(icon, color: const Color(0xFF717171)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintText: text,
        hintStyle: AppStyles.stylePoppinsMedium14
            .copyWith(color: const Color(0xFF717171)),
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
