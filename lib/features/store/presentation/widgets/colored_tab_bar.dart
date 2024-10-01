import 'package:flutter/material.dart';

class ColoredTabBar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;

  const ColoredTabBar(this.color, {super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: const TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        tabs: [
          Tab(child: Text("Sports")),
          Tab(child: Text("Furniture")),
          Tab(child: Text("Electronics")),
          Tab(child: Text("Clothes")),
          Tab(child: Text("Cosmetics")),
        ],
      ),
    );
  }
}
