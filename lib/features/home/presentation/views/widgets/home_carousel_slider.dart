// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/custom_dot_indicator.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/rounded_image.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({
    super.key,
  });

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {
  int selectedIndex = 0;
  CarouselSliderController? carouselController = CarouselSliderController();
  final List<String> images = [
    "assets/images/banners/banner_4.jpg",
    "assets/images/banners/banner_3.jpg",
    "assets/images/banners/banner_6.jpg",
    "assets/images/banners/banner_5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 18,
        ),
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                selectedIndex = index;
              });
            },
            height: 200,
          ),
          items: List.generate(images.length, (index) {
            return RoundedImage(image: images[index]);
          }),
        ),
        SizedBox(
          height: 18,
        ),
        Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                images.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            carouselController!.animateToPage(index);
                          });
                        },
                        child: CustomDotIndicator(
                          isActive: index == selectedIndex,
                        ),
                      ),
                    ))),
      ],
    );
  }
}
