import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.leadingIcon,
      this.actions,
      this.title,
      this.showBackArow = false,
      this.leadingOnPressed});
  final Widget? title;
  final IconData? leadingIcon;
  final Function()? leadingOnPressed;
  final bool showBackArow;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        leading: showBackArow
            ? IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Iconsax.arrow_left_outline,
                  color: Theme.of(context).colorScheme.surface,
                ))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
