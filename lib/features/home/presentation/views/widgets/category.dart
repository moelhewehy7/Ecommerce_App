// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/rounded_image.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        padding: 5,
        title: Text("Sports",
            style: AppStyles.styleRalewayBold17.copyWith(
                fontSize: 22, color: Theme.of(context).colorScheme.onSurface)),
        showBackArow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                child: RoundedImage(
                  padding: EdgeInsets.zero,
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                  image: "assets/images/banners/banner_6.jpg",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
