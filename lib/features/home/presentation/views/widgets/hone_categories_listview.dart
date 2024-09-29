import 'package:flutter/material.dart';

import 'home_categories_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  static List<String> categories = [
    'BabyKids',
    'BabyKids',
    'BabyKids',
    'BabyKids',
    'BabyKids',
    'BabyKids',
    'BabyKids',
    'BabyKids',
    'BabyKids',
    'BabyKids',
    'BabyKids',
    'BabyKids',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: HomeCategoriesItem(
              text: categories[index],
            ),
          );
        });
  }
}
