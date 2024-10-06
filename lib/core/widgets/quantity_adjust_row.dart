import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuantityAdjustRow extends StatelessWidget {
  const QuantityAdjustRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
              width: 32,
              child: IconButton.filledTonal(
                padding: EdgeInsets.zero,
                iconSize: 16,
                constraints: const BoxConstraints(
                  minHeight: 32, // Minimum height of the button
                  minWidth: 32, // Minimum width of the button
                ),
                icon: Icon(
                  Icons.remove,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '2',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              height: 32, // Ensure height is the same as the button
              width: 32, // Ensure width is the same as the button
              child: IconButton.filledTonal(
                padding: EdgeInsets.zero,
                iconSize: 16,
                constraints: const BoxConstraints(
                  minHeight: 32, // Minimum height of the button
                  minWidth: 32, // Minimum width of the button
                ),
                icon: Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          r'$134.0',
          style: AppStyles.stylePoppinsMedium20.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
