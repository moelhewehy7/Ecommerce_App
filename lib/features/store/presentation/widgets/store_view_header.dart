import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_grid_view.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/core/widgets/text_fields.dart';
import 'package:flutter_application2/features/store/presentation/widgets/all_brands_view.dart';
import 'package:flutter_application2/features/store/presentation/widgets/colored_tab_bar.dart';
import 'package:flutter_application2/features/store/presentation/widgets/feauterd_brand_item.dart';
import 'package:icons_plus/icons_plus.dart';

import 'brand_view.dart';

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
      expandedHeight: 425,
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllBrandsView()));
                },
                title: "Featured brands",
                showTextButton: true,
                titleColor: Theme.of(context).colorScheme.onSurface),
            const SizedBox(
              height: 12,
            ),
            CustomGridView(
              itemCount: 4,
              height: 80,
              itemBuilder: (p0, p1) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BrandView()));
                    },
                    child: const FeauterdBrandItem());
              },
            ),
          ],
        ),
      ),
      bottom: ColoredTabBar(Theme.of(context).colorScheme.surface),
    );
  }
}
