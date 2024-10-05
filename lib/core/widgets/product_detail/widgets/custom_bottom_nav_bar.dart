import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton.filledTonal(
                  icon: Icon(Icons.remove,
                      color: Theme.of(context).colorScheme.onSurface),
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                Text(
                  '2',
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(width: 10),
                IconButton.filledTonal(
                  icon: Icon(Icons.add,
                      color: Theme.of(context).colorScheme.onSurface),
                  onPressed: () {},
                ),
              ],
            ),
            const Spacer(),
            Expanded(
              child: SizedBox(
                  height: 50,
                  child: CustomFilledButton(
                      fontSize: 16, text: 'Add to cart', onPressed: () {})),
            ),
          ],
        ),
      ),
    );
  }
}
