import 'package:flutter/material.dart';

import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_tile_footer.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_tile_header.dart';

class GridVerticalItem extends StatelessWidget {
  const GridVerticalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomRoundedContainer(
        color: Theme.of(context).colorScheme.surfaceBright,
        width: 220,
        radius: 12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomRoundedContainer(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              height: 180,
              radius: 12,
              padding: const EdgeInsets.all(8),
              child: GridTile(
                  header: const GridTileHeader(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/NikeWildhorse.png",
                    ),
                  )),
            ),
            const SizedBox(
              height: 6,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: GridTileFooter(),
            )
          ],
        ),
      ),
    ]);
  }
}
