import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class IntroductionViewDescription extends StatelessWidget {
  const IntroductionViewDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 43),
      child: Text(
        textAlign: TextAlign.center,
        'Shop smarter.\n'
        'Browse, buy, and save.\n'
        'Your brands, one tap away.',
        style: AppStyles.styleNunitoSansLight19,
        maxLines: 4, // Set the number of lines to limit
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
