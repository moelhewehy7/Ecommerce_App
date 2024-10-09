import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class PriceSummaryRow extends StatelessWidget {
  const PriceSummaryRow({
    super.key,
    required this.title,
    required this.data,
    this.fontsize,
  });
  final String title, data;

  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.stylePoppinsMedium14.copyWith(fontSize: fontsize),
        ),
        Text(data,
            style: AppStyles.stylePoppinsMedium14.copyWith(fontSize: fontsize))
      ],
    );
  }
}
