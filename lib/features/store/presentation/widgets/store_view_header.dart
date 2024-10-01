import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_grid_view.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/core/widgets/text_fields.dart';
import 'package:flutter_application2/features/store/presentation/widgets/colored_tab_bar.dart';
import 'package:flutter_application2/features/store/presentation/widgets/feauterd_brand_item.dart';
import 'package:icons_plus/icons_plus.dart';

class StoreViewHeader extends StatelessWidget {
  const StoreViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context)
          .colorScheme
          .surface, //to remove shadow glow whe nit reachs the end o scrolling
      scrolledUnderElevation: 0,
      pinned: true,
      floating: true,
      automaticallyImplyLeading: false,
      expandedHeight: 440,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(
              height: 16,
            ),
            BasicTextForm(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              icon: Iconsax.search_normal_1_outline,
              text: "Search in Store",
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextheader(
                title: "Featured brands",
                showTextButton: true,
                titleColor: Theme.of(context).colorScheme.onSurface),
            const SizedBox(
              height: 12,
            ),
            const CustomGridView(height: 80, child: FeauterdBrandItem()),
          ],
        ),
      ),
      bottom: ColoredTabBar(Theme.of(context).colorScheme.surface),
    );
  }
}
