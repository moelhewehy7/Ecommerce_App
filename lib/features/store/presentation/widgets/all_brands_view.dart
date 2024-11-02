import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_grid_view.dart';
import 'package:flutter_application2/features/store/presentation/widgets/brand_view.dart';

import 'feauterd_brand_item.dart';

class AllBrandsView extends StatelessWidget {
  const AllBrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArow: true,
        padding: 20,
        title: Text("brands",
            style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomGridView(
          itemCount: 20,
          height: 90,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
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
      ),
    );
  }
}
