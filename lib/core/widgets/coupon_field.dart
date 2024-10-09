import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';

class CouponField extends StatelessWidget {
  const CouponField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      borderColor: Theme.of(context).colorScheme.onSurfaceVariant,
      showBorder: true,
      padding: const EdgeInsets.only(left: 24, right: 8, top: 5, bottom: 6),
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: "Coupon Code",
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
              width: 85,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceContainerHigh,
                    foregroundColor: Theme.of(context).colorScheme.outline),
                child: Text(
                  "Apply",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.outline),
                ),
              )),
        ],
      ),
    );
  }
}
