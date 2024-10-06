import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

class AccountListTile extends StatelessWidget {
  const AccountListTile({
    this.onTap,
    super.key,
    required this.icon,
    this.trailing,
    required this.title,
    required this.subtitle,
  });
  final IconData icon;
  final Widget? trailing;
  final String title, subtitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      onTap: onTap,
      leading: Icon(icon),
      title: Text(title,
          style: AppStyles.styleRalewayBold17
              .copyWith(color: Theme.of(context).colorScheme.onSurface)),
      subtitle: Text(subtitle, style: AppStyles.styleNunitoSansRegular15),
      trailing: trailing,
    );
  }
}
