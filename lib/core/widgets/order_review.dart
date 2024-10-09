import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/coupon_field.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/core/widgets/price_summary_section.dart';
import 'package:icons_plus/icons_plus.dart';
import '../utils/app_styles.dart';
import 'my_cart_body.dart';

class OrderReview extends StatelessWidget {
  const OrderReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Order Review",
            style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22)),
        showBackArow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            children: [
              const MyCartBody(),
              const SizedBox(height: 16),
              const CouponField(),
              const SizedBox(
                height: 16,
              ),
              CustomRoundedContainer(
                showBorder: true,
                borderColor: Theme.of(context).colorScheme.onSurfaceVariant,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PriceSummarySection(),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextheader(
                        textButtonTitle: "Change",
                        title: "Payment Method",
                        showTextButton: true,
                        titleColor: Theme.of(context).colorScheme.onSurface),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Brand(Brands.visa),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Visa",
                            style: AppStyles.stylePoppinsMedium14,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const PriceSummarySection()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomFilledButton(
            text: r"Checkout $245.0",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OrderReview()));
            }),
      ),
    );
  }
}
