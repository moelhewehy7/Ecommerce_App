import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/listview_separated_item.dart';
import 'package:icons_plus/icons_plus.dart';

class ProductDetailHeader extends StatelessWidget {
  const ProductDetailHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.surfaceContainer,
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Image.asset(
                  "assets/images/acer_laptop_var_4.png",
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 30,
            left: 1,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                itemCount: 6,
                padding: const EdgeInsets.only(left: 20, right: 20),
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const ListViewSeparatedItem();
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomAppBar(
              showBackArow: true,
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Iconsax.heart_outline))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
