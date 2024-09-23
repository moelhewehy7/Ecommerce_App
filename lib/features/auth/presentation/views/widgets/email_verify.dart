import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/utils/assets.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:flutter_application2/features/auth/presentation/views/widgets/email_verified.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailVerifyView extends StatelessWidget {
  const EmailVerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              AssetsData.emailVerify,
              height: 300,
            ),
            const Text("Verify your email address!",
                style: AppStyles.styleRalewayBold28),
            const SizedBox(
              height: 12,
            ),
            Text(
              "mohamed@yahoo.com",
              style: AppStyles.styleNunitoSansLight19.copyWith(
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Please verify your email to continue using your account. We’ve sent a verification link to your email address. Check your inbox and follow the instructions to complete the process.",
              style: AppStyles.styleNunitoSansLight19.copyWith(fontSize: 15),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            CustomFilledButton(
                text: "Continue",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EmailVerifiedView(),
                  ));
                }),
            const SizedBox(
              height: 12,
            ),
            CustomOutLinedButton(text: "Resend email", onPressed: () {}),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
