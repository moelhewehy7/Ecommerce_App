// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_curved_widget.dart';
import 'package:flutter_application2/core/widgets/listview_separated_item.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/discount_badge.dart';
import 'package:icons_plus/icons_plus.dart';

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
                  Text(
                    r"$122 - $180",
                    style: AppStyles.styleRalewayBold17
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 17),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Black Acer laptop",
                style: AppStyles.styleNunitoSansMedium19.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onSurface),
              ),
              SizedBox(
                height: 16,
              ),
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: "stock : ",
                    style: AppStyles.stylePoppinsMedium20.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.outline),
                  ),
                  TextSpan(
                    text: "in Stock",
                    style: AppStyles.stylePoppinsMedium20.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                ],
              )),
            ],
          ),
        )
      ])),
    );
  }
}

class RatingHeader extends StatelessWidget {
  const RatingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Iconsax.star_bold,
          color: Colors.amber,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          "3.9 (299)",
          style: AppStyles.stylePoppinsMedium20.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 17),
        ),
        Spacer(),
        Icon(
          Icons.share,
        ),
      ],
    );
  }
}
