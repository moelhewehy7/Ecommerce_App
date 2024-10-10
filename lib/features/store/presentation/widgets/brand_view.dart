import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_dropdown_field.dart';
import '../../../home/presentation/views/widgets/popular_products.dart';
import 'feauterd_brand_item.dart';

class BrandView extends StatelessWidget {
  const BrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArow: true,
        padding: 20,
        title: Text("Nike",
            style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22)),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              FeauterdBrandItem(),
              SizedBox(
                height: 16,
              ),
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
