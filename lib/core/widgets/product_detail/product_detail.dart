import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:flutter_application2/core/widgets/custom_curved_widget.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/chipchoice_color.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/chipchoice_size.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/custom_text_rich.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/discrtipion_widget.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/price_row.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/rating_header.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/vartiation_container.dart';
import 'package:icons_plus/icons_plus.dart';
import '../product detail/widgets/product_detail_header.dart';
import 'widgets/custom_bottom_nav_bar.dart';
import 'widgets/product_header.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
          const CustomCurvedWidget(
            widget: ProductDetailHeader(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProductHeader(),
                const VartiationsContainer(),
                const SizedBox(
                  height: 16,
                ),
                CustomTextheader(
                  title: "Color",
                  showTextButton: false,
                  titleColor: Theme.of(context).colorScheme.onSurface,
                ),
                const SizedBox(
                  height: 16,
                ),
                const ChoiceChipColor(),
                const SizedBox(
                  height: 16,
                ),
                CustomTextheader(
                  title: "Size",
                  showTextButton: false,
                  titleColor: Theme.of(context).colorScheme.onSurface,
                ),
                const SizedBox(
                  height: 16,
                ),
                const ChoiceChipSize(),
                const SizedBox(
                  height: 16,
                ),
                CustomFilledButton(
                  text: "Checkout",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                DiscriptionWidget(laptopDescription: _laptopDescription)
              ],
            ),
          )
        ])),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }

  final String _laptopDescription = '''
Acer laptops are known for offering a wide range of options that cater to different user needs, from budget-friendly models to high-performance machines. Here's a breakdown of some of their key series:

1. Acer Aspire Series:
   - Great for everyday computing, including web browsing, word processing, and media consumption. Affordable and versatile.
   - Available with Intel Core i3, i5, i7, and AMD Ryzen processors.

2. Acer Swift Series:
   - Slim, portable, and designed for professionals and students needing mobility.
   - Intel i5 or i7 processors, SSD storage, and good battery life.

3. Acer Nitro Series:
   - Entry-level gaming laptops with a balance of gaming performance and affordability.
   - Equipped with Intel i5/i7 or AMD Ryzen 5/7 processors and NVIDIA GeForce GTX/RTX GPUs.

4. Acer Predator Series:
   - High-performance gaming laptops with advanced cooling and aggressive designs.
   - Features Intel Core i7/i9 processors and RTX 20/30 series GPUs with high-refresh-rate displays.

5. Acer Chromebook Series:
   - Simple and lightweight laptops running on Chrome OS, designed for online work.
   - Affordable with long battery life, making them ideal for students and basic users.
    ''';
}
