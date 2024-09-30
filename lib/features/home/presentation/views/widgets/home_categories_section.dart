import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/hone_categories_listview.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextheader(
            titleColor: Theme.of(context).colorScheme.surface,
            showTextButton: false,
            title: "Popular Categories",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 90,
          child: CategoriesListView(),
        ),
      ],
    );
  }
}
