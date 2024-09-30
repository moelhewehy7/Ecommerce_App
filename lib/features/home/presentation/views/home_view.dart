// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/home_carousel_slider.dart';
import 'widgets/grid_vertical_item.dart';
import 'widgets/home_view_header.dart';
import 'widgets/home_view_header_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeViewHeader(
              child: HomeViewHeaderBody(),
            ),
            HomeCarouselSlider(),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 300,
                    crossAxisCount: 2),
                itemCount: 15,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (itemBuilder, index) => GridVerticalItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
