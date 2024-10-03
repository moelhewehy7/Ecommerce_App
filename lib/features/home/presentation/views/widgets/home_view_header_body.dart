// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application2/core/widgets/text_fields.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/home_categories_section.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/hone_appbar.dart';

import 'package:icons_plus/icons_plus.dart';

class HomeViewHeaderBody extends StatelessWidget {
  const HomeViewHeaderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SizedBox(
                height: 35,
              ),
              BasicTextForm(
                  color: Theme.of(context).colorScheme.surfaceBright,
                  text: "Search in Store",
                  icon: Iconsax.search_normal_1_outline),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        HomeCategoriesSection(),
        SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
