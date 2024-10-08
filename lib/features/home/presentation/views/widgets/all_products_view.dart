import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_dropdown_field.dart';
import 'popular_products.dart';

class AllProductsView extends StatelessWidget {
  const AllProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          showBackArow: true,
          title: Text("All Products",
              style: AppStyles.styleRalewayBold17.copyWith(
                  fontSize: 22,
                  color: Theme.of(context).colorScheme.onSurface))),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              CustomDropDownField(),
              SizedBox(
                height: 16,
              ),
              PopularProducts()
            ],
          ),
        ),
      ),
    );
  }
}
