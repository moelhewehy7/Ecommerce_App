import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_header.dart';
import '../../../home/presentation/views/widgets/home_view_products.dart';
import 'tab_bar_view_header.dart';

class TabBarViewBody extends StatelessWidget {
  const TabBarViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(
            height: 16,
          ),
          const TabBarViewheader(),
          const SizedBox(
            height: 16,
          ),
          const TabBarViewheader(),
          const SizedBox(
            height: 16,
          ),
          CustomTextheader(
            title: "You might also like",
            titleColor: Theme.of(context).colorScheme.onSurface,
            showTextButton: true,
          ),
          const SizedBox(
            height: 16,
          ),
          const HomeViewProducts(),
        ],
      ),
    );
  }
}
