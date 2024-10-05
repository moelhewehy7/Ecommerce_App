// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_curved_widget.dart';

import 'package:flutter_application2/core/widgets/product_detail/widgets/vartiation_container.dart';
import 'package:flutter_application2/core/widgets/product_detail.dart';
import 'package:icons_plus/icons_plus.dart';
import 'widgets/price_row.dart';
import 'widgets/product_detail_header.dart';

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
                height: 64,
              ),
              Text(
                r"$85",
                style: AppStyles.stylePoppinsMedium20
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 22),
              )
            ],
          ),
        )
      ])),
    );
  }
}
