import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:flutter_application2/features/auth/presentaion/views/login_view.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/widgets/text_fields.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Forgot Password",
                  style: AppStyles.styleRalewayBold28),
              const SizedBox(
                height: 24,
              ),
              Text(
                "We’ll send a password reset link to your registered email address. Please check your inbox and follow the instructions to reset your password. If you don’t see the email, be sure to check your spam or junk folder.",
                style: AppStyles.styleNunitoSansLight19.copyWith(fontSize: 15),
              ),
              const SizedBox(
                height: 32,
              ),
              const BasicTextForm(
                  text: "Email", icon: Iconsax.direct_right_outline),
              const SizedBox(
                height: 24,
              ),
              CustomFilledButton(
                  text: "Submit",
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginView()),
                        (Route<dynamic> route) => false);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
