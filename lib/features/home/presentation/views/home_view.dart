// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application2/core/widgets/text_fields.dart';

import 'package:icons_plus/icons_plus.dart';

import 'widgets/home_categories_section.dart';
import 'widgets/home_view_header.dart';
import 'widgets/hone_appbar.dart';

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
                            text: "Search in Store",
                            icon: Iconsax.search_normal_1_outline),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                  HomeCategoriesSection()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
