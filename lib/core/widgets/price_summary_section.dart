import 'package:flutter/widgets.dart';

import 'price_summary_row.dart';

class PriceSummarySection extends StatelessWidget {
  const PriceSummarySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PriceSummaryRow(
          title: "Subtotal",
          data: r"$85.00",
        ),
        SizedBox(
          height: 8,
        ),
        PriceSummaryRow(
          title: "Shipping Fee",
          data: r"$25.00",
        ),
        SizedBox(
          height: 8,
        ),
        PriceSummaryRow(
          title: "Tax Fee",
          data: r"$00.00",
        ),
        SizedBox(
          height: 12,
        ),
        PriceSummaryRow(
          fontWeight: FontWeight.w800,
          fontsize: 16,
          title: "Order Total",
          data: r"$110.00",
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
