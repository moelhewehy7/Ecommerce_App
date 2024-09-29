import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Popular Categories",
              style: AppStyles.styleRalewayeBold21
                  .copyWith(color: Theme.of(context).colorScheme.surface)),
        ),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 90,
          child: CategoriesListView(),
        ),
      ],
    );
  }
}
