import 'package:flutter/material.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/category_item.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(width: 16);
          },
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CategoryItem();
          },
          shrinkWrap: true,
          itemCount: 3),
    );
  }
}
