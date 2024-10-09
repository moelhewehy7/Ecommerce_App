import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/category_listview.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/rounded_image.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

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
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundedImage(
                  padding: EdgeInsets.zero,
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                  image: "assets/images/banners/banner_6.jpg",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextheader(
                    title: "Sports Equipments",
                    showTextButton: true,
                    titleColor: Theme.of(context).colorScheme.onSurface),
              ),
              const CategoryListview(),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextheader(
                    title: "Sports Shoes",
                    showTextButton: true,
                    titleColor: Theme.of(context).colorScheme.onSurface),
              ),
              const SizedBox(
                height: 16,
              ),
              const CategoryListview(),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextheader(
                    title: "Sports Suits",
                    showTextButton: true,
                    titleColor: Theme.of(context).colorScheme.onSurface),
              ),
              const CategoryListview(),
            ],
          ),
        ),
      ),
    );
  }
}
