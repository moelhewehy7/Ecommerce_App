import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/utils/assets.dart';

class IntroductionHeader extends StatelessWidget {
  const IntroductionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 134,
          height: 134,
          decoration: BoxDecoration(
            color: Theme.of(context)
                .colorScheme
                .surface, // Optional: Background color of the container
            shape: BoxShape.circle, // Makes the container circular
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
              child: Image.asset(
            AssetsData.logo,
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
                style: AppStyles.styleRalewayMedium45
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
                children: [
              TextSpan(
                  text: "Sage",
                  style: AppStyles.styleRalewayMedium45
                      .copyWith(color: const Color(0xFF28ddff))),
            ])),
      ],
    );
  }
}
