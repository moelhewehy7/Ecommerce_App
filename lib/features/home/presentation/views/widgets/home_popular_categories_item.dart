// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/category_view.dart';

import 'package:icons_plus/icons_plus.dart';

class HomePopularCategoriesItem extends StatelessWidget {
  const HomePopularCategoriesItem({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CategoryView()));
          },
          child: Container(
            width: 65,
            height: 65,
            decoration: ShapeDecoration(
                color: Theme.of(context).colorScheme.surfaceBright,
                shape: CircleBorder()),
            child: Center(
                child: Icon(
              Iconsax.bag_2_outline,
              color: Theme.of(context).colorScheme.onSurface,
            )),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          text,
          style: AppStyles.styleRalewayeBold14.copyWith(
              color: Theme.of(context).colorScheme.surface,
              fontWeight: FontWeight.w600),
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
