// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_cart_counter.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/core/widgets/text_fields.dart';
import 'package:icons_plus/icons_plus.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        padding: 20,
        title: Text("Store",
            style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22)),
        actions: [
          CustomCartCounter(
            color: Theme.of(context).colorScheme.onSurface,
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      BasicTextForm(
                        color:
                            Theme.of(context).colorScheme.surfaceContainerLow,
                        icon: Iconsax.search_normal_1_outline,
                        text: "Search in Store",
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      CustomTextheader(
                          title: "Featured brands",
                          showTextButton: true,
                          titleColor: Theme.of(context).colorScheme.onSurface),
                      SizedBox(
                        height: 12,
                      ),
                      CustomRoundedContainer(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Brand(Brands.nike),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Nike",
                                      style: AppStyles.styleRalewayBold17,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(
                                      Iconsax.verify_bold,
                                      color: Color(0xFF4CAF50),
                                      size: 20,
                                    )
                                  ],
                                ),
                                Text("265 Products",
                                    style: AppStyles.styleNunitoSansRegular12)
                              ],
                            )
                          ],
                        ),
                        color:
                            Theme.of(context).colorScheme.surfaceContainerLow,
                        padding: EdgeInsets.all(12),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: SizedBox()),
    );
  }
}
