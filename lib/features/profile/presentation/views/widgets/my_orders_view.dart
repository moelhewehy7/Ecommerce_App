import 'package:flutter/material.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/my_orders_item.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          padding: 5,
          title: Text("My Orders",
              style: AppStyles.styleRalewayBold17.copyWith(
                  fontSize: 22,
                  color: Theme.of(context).colorScheme.onSurface)),
          showBackArow: true,
        ),
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
          itemCount: 4,
          itemBuilder: (context, index) => const MyOrdersItem(),
        ));
  }
}
