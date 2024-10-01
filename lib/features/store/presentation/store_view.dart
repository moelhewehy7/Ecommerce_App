// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_cart_counter.dart';
import 'package:flutter_application2/features/store/presentation/widgets/store_view_header.dart';
import 'package:flutter_application2/features/store/presentation/widgets/tab_bar_view_body.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          padding: 20,
          title: Text("Store",
              style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22)),
          actions: [
            CustomCartCounter(
              color: Theme.of(context).colorScheme.onSurface,
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                StoreViewHeader(),
              ];
            },
            body: TabBarView(
                children: List.generate(5, (index) => TabBarViewBody()))),
      ),
    );
  }
}
