import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/utils/assets.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:flutter_svg/svg.dart';

class EmailVerified extends StatelessWidget {
  const EmailVerified({super.key});

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
              AssetsData.emailVerifyed,
              height: 300,
            ),
            const Text("Your account successfully created!",
                textAlign: TextAlign.center,
                style: AppStyles.styleRalewayBold28),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Congratulations! Your account has been successfully created, and you're all set to begin. We can’t wait for you to explore everything we have to offer.",
              style: AppStyles.styleNunitoSansLight19.copyWith(fontSize: 15),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            CustomFilledButton(text: "Continue", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
