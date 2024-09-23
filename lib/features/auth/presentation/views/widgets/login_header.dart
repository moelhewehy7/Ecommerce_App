import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/utils/assets.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(height: 70, AssetsData.logo),
        const SizedBox(
          height: 8,
        ),
        const Text("Login", style: AppStyles.styleRalewayBold28),
        const SizedBox(
          height: 4,
        ),
        const Text(
          "Good to see you back!",
          style: AppStyles.styleNunitoSansLight19,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
