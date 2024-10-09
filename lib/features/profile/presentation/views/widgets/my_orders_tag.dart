import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class MyOrdersTag extends StatelessWidget {
  const MyOrdersTag({
    super.key,
    required this.icon,
    required this.orderTitle,
    required this.orderSubtitle,
  });
  final IconData icon;
  final String orderTitle, orderSubtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(orderTitle,
                style: AppStyles.styleRalewayBold17.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.outline)),
            const SizedBox(
              height: 4,
            ),
            Text(orderSubtitle,
                style: AppStyles.styleNunitoSansSemiBold14
                    .copyWith(fontSize: 15, fontWeight: FontWeight.w800)),
          ],
        ),
      ],
    );
  }
}
