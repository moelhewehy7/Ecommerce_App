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
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        hintText: "Password",
        suffixIcon: IconButton(
            onPressed: () {}, icon: const Icon(Iconsax.eye_slash_outline)),
        hintStyle: AppStyles.stylePoppinsMedium14.copyWith(color: Colors.grey),
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
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        hintText: "Email",
        hintStyle: AppStyles.stylePoppinsMedium14.copyWith(color: Colors.grey),
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
