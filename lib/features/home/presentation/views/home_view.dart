// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/all_products_view.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/home_carousel_slider.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/home_view_popular_products.dart';
import '../../../../core/widgets/custom_view_header.dart';
import 'widgets/home_view_header_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomViewHeader(
              child: HomeViewHeaderBody(),
            ),
            HomeCarouselSlider(),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextheader(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllProductsView()));
                  },
                  title: "Popular Products",
                  titleColor: Theme.of(context).colorScheme.onSurface,
                  showTextButton: true),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: HomeViewPopularProducts(),
            ),
          ],
        ),
      ),
    );
  }
}
