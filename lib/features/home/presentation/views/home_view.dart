// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/home_carousel_slider.dart';
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
            HomeCarouselSlider()
          ],
        ),
      ),
    );
  }
}
