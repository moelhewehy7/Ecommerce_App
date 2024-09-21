import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'intoduction_descrption.dart';

class IntroductionViewBody extends StatelessWidget {
  const IntroductionViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Container(
              width: 134,
              height: 134,
              decoration: BoxDecoration(
                color:
                    Colors.white, // Optional: Background color of the container
                shape: BoxShape.circle, // Makes the container circular
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                  child: Image.asset(
                "assets/images/ShopSageLogo.png",
                width: 100,
                height: 100,
              )),
            ),
            const SizedBox(
              height: 24,
            ),
            RichText(
                text: TextSpan(
                    text: "Shop",
                    style: AppStyles.styleRalewayMedium52,
                    children: [
                  TextSpan(
                      text: "Sage",
                      style: AppStyles.styleRalewayMedium52
                          .copyWith(color: Color(0xFF28ddff))),
                ])),
            const SizedBox(
              height: 18,
            ),
            const IntroductionViewDescription(),
            const Spacer(),
            const CustomFilledButton(),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I already have an account",
                  style: AppStyles.styleNunitoSansLight15,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  width: 16,
                ),
                IconButton.filled(
                    onPressed: () {}, icon: const Icon(Icons.arrow_forward))
              ],
            ),
            const SizedBox(
              height: 55,
            ),
          ]),
    );
  }
}
