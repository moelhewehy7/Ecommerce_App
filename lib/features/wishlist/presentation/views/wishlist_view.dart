import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_grid_view.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_vertical_item.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../core/utils/app_styles.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          padding: 20,
          title: Text("Wishlist",
              style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Iconsax.add_outline))
          ]),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomGridView(
            physics: AlwaysScrollableScrollPhysics(),
            child: GridVerticalItem()),
      ),
    );
  }
}
