import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/core/widgets/product_detail/widgets/custom_text_rich.dart';

class VartiationsContainer extends StatelessWidget {
  const VartiationsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      padding: const EdgeInsets.all(20),
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Row(
        children: [
          Text(
            "Variaations",
            style: AppStyles.styleRalewayBold17.copyWith(
                fontSize: 17, color: Theme.of(context).colorScheme.onSurface),
          ),
          const SizedBox(
            width: 16,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextRich(
                leading: "Price",
                title: r"$85",
              ),
              CustomTextRich(
                leading: "Status",
                title: "out of Stock",
              ),
            ],
          )
        ],
      ),
    );
  }
}
