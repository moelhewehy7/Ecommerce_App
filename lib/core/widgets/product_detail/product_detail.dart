// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:flutter_application2/core/widgets/custom_curved_widget.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/custom_text_rich.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/price_row.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/rating_header.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/vartiation_container.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:readmore/readmore.dart';

import '../product detail/widgets/product_detail_header.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        CustomCurvedWidget(
          widget: ProductDetailHeader(),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingHeader(),
              SizedBox(
                height: 16,
              ),
              PriceRow(),
              SizedBox(
                height: 16,
              ),
              Text(
                "Black Acer laptop",
                style: AppStyles.stylePoppinsMedium20.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onSurface),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextRich(
                leading: "Status",
                title: "in Stock",
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Brand(Brands.nike),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Acer",
                    style: AppStyles.styleRalewayBold17.copyWith(
                        fontSize: 17,
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Icon(
                    Icons.fiber_manual_record_sharp,
                    color: Colors.black,
                    size: 18,
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              VartiationsContainer(),
              SizedBox(
                height: 16,
              ),
              CustomTextheader(
                title: "Color",
                showTextButton: false,
                titleColor: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(
                height: 16,
              ),
              ChoiceChipColor(),
              SizedBox(
                height: 16,
              ),
              CustomTextheader(
                title: "Size",
                showTextButton: false,
                titleColor: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(
                height: 16,
              ),
              ChoiceChipSize(),
              SizedBox(
                height: 16,
              ),
              CustomFilledButton(
                text: "Checkout",
                onPressed: () {},
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextheader(
                title: "Discription",
                showTextButton: false,
                titleColor: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(
                height: 16,
              ),
              ReadMoreText(
                _laptopDescription,
                trimLines: 6,
                colorClickableText: Theme.of(context)
                    .colorScheme
                    .primary, // "Read more" text color
                trimMode: TrimMode.Line, // Trim by number of lines
                trimCollapsedText: 'Read More',
                trimExpandedText: 'Read Less',
                moreStyle: TextStyle(fontSize: 14, color: Colors.blue),
                lessStyle: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ],
          ),
        )
      ])),
    );
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

class ChoiceChipSize extends StatefulWidget {
  const ChoiceChipSize({
    super.key,
  });

  @override
  State<ChoiceChipSize> createState() => _ChoiceChipSizeState();
}

class _ChoiceChipSizeState extends State<ChoiceChipSize> {
  int? _selectedIndex = -1;
  List<String> sizes = ["S", "M", "L", "XL"];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 7,
      children: List<Widget>.generate(
        sizes.length,
        (int index) {
          return ChoiceChip(
            label: Text(sizes[index]),
            selected: _selectedIndex == index,
            onSelected: (bool selected) {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        },
      ).toList(),
    );
  }
}

class ChoiceChipColor extends StatefulWidget {
  const ChoiceChipColor({
    super.key,
  });

  @override
  State<ChoiceChipColor> createState() => _ChoiceChipColorState();
}

class _ChoiceChipColorState extends State<ChoiceChipColor> {
  List<Color> colors = [Colors.red, Colors.blue, Colors.green];

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return CustomChoiceChip(
          onSelected: (p0) {
            setState(() {
              selectedIndex = index;
            });
          },
          isSelected: selectedIndex == index,
          color: colors[index],
        );
      }),
    );
  }
}

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onSelected,
  });
  final Color color;
  final bool isSelected;
  final Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: EdgeInsets.zero,
      avatar: isSelected
          ? CustomRoundedContainer(
              borderRadius: BorderRadius.circular(20),
              height: 30,
              width: 30,
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
              color: color)
          : CustomRoundedContainer(
              borderRadius: BorderRadius.circular(20),
              height: 30,
              width: 30,
              child: SizedBox(),
              color: color),
      side: BorderSide.none,
      label: Text(''), // Empty label for a cleaner look

      selected: isSelected,
      onSelected: onSelected, showCheckmark: false,
      backgroundColor: color,
      selectedColor: color,
      shape: CircleBorder(),
      labelPadding: EdgeInsets.zero,
    );
  }
}
