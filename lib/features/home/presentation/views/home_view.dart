// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_cerved_edges.dart';
import 'package:flutter_application2/core/widgets/custom_curved_widget.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_cart_counter.dart';
import 'widgets/custom_circular_container.dart';
import 'widgets/home_view_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeViewHeader(
              child: Column(
                children: [
                  CustomAppBar(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good day for shopping",
                              style: AppStyles.styleNunitoSansRegular15
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .surface)),
                          Text("Mohamed elhewehy",
                              style: AppStyles.styleRalewayBold17.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.surface)),
                        ],
                      ),
                      actions: [
                        CustomCartCounter(),
                      ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
