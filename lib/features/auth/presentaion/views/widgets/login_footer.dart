import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Or Sign in With',
                  style: AppStyles.stylePoppinsMedium14.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 1,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPlatformButton(
                brand: Brands.google,
              ),
              SizedBox(
                width: 24,
              ),
              CustomPlatformButton(
                brand: Brands.facebook_circled,
              ),
            ],
          )
        ],
      ),
    );
  }
}
