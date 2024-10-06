import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'account_list_tile.dart';

class AppSettingsListTile extends StatelessWidget {
  const AppSettingsListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AccountListTile(
          icon: Iconsax.document_upload_outline,
          title: "Load Data",
          subtitle: "Upload or sync your data to cloud firebase",
        ),
        AccountListTile(
          icon: Iconsax.security_safe_outline,
          title: "Geolocation",
          subtitle: "Enable or disable location services",
          trailing: Switch(value: true, onChanged: (value) {}),
        ),
        AccountListTile(
          icon: Iconsax.security_safe_outline,
          title: "Safe Mode",
          subtitle: "Enable safe browsing features",
          trailing: Switch(value: true, onChanged: (value) {}),
        ),
        AccountListTile(
          icon: Iconsax.security_safe_outline,
          title: "HD Image Quality",
          subtitle: "Toggle high-quality images",
          trailing: Switch(value: false, onChanged: (value) {}),
        ),
      ],
    );
  }
}
