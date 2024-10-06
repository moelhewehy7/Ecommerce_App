import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.backArrowColor,
      this.leadingIcon,
      this.padding = 0,
      this.actions,
      this.title,
      this.showBackArow = false,
      this.leadingOnPressed});
  final Widget? title;
  final IconData? leadingIcon;
  final Function()? leadingOnPressed;
  final bool showBackArow;
  final List<Widget>? actions;
  final double padding;
  final Color? backArrowColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: AppBar(
        elevation: 0,
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
                  color: backArrowColor,
                ))
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
// showBackArow
//             ? IconButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 icon: Icon(
//                   Iconsax.arrow_left_outline,
//                   color: backArrowColor,
//                 ))
//             : leadingIcon != null
//                 ? IconButton(
//                     onPressed: leadingOnPressed, icon: Icon(leadingIcon))
//                 : null,