// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_curved_widget.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/listview_separated_item.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/discount_badge.dart';
import 'package:icons_plus/icons_plus.dart';

import 'product_detail/widgets/rating_header.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        CustomCurvedWidget(
          widget: Container(
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
                      padding: EdgeInsets.only(left: 20, right: 20),
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListViewSeparatedItem();
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 16,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CustomAppBar(
                    showBackArow: true,
                    actions: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Iconsax.heart_outline))
                    ],
                  ),
                ),
              ],
            ),
          ),
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
              Row(
                children: [
                  DiscountBadge(),
                  SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        r"$122",
                        style: AppStyles.stylePoppinsMedium20.copyWith(
                            fontWeight: FontWeight.w700,
                            decorationThickness: 2,
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Theme.of(context)
                                .colorScheme
                                .surfaceContainerHighest),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        r"$85",
                        style: AppStyles.stylePoppinsMedium20.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 22),
                      )
                    ],
                  ),
                ],
              ),
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
              CustomRoundedContainer(
                padding: EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(12),
                child: Row(
                  children: [
                    Text(
                      "Variaations",
                      style: AppStyles.styleRalewayBold17.copyWith(
                          fontSize: 17,
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomTextRich(
                          leading: "Price",
                          title: r"$85",
                        ),
                        CustomTextRich(
                          leading: "Status",
                          title: "out of Stock",
                        ),
                      ],
                    )
                  ],
                ),
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
              )
            ],
          ),
        )
      ])),
    );
  }
}

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({
    super.key,
    required this.leading,
    required this.title,
  });
  final String leading, title;
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      children: [
        TextSpan(
          text: "$leading : ",
          style: AppStyles.styleRalewayBold14.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.outline),
        ),
        TextSpan(
          text: title,
          style: AppStyles.stylePoppinsMedium20
              .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ],
    ));
  }
}
