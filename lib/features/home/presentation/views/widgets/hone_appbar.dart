import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_cart_counter.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good day for shopping",
                style: AppStyles.styleNunitoSansRegular15
                    .copyWith(color: Theme.of(context).colorScheme.surface)),
            Text("Mohamed elhewehy",
                style: AppStyles.styleRalewayBold17
                    .copyWith(color: Theme.of(context).colorScheme.surface)),
          ],
        ),
        actions: [
          CustomCartCounter(),
        ]);
  }
}
