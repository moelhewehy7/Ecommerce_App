import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/account_list_tile.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../core/widgets/custom_view_header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const CustomViewHeader(
          child: ProfileViewHeaderBody(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              CustomTextheader(
                  title: "Account",
                  titleColor: Theme.of(context).colorScheme.onSurface,
                  showTextButton: false),
              const SizedBox(
                height: 16,
              ),
              const AccountListTile(
                icon: Iconsax.user_outline,
                title: "My Addresses",
                subtitle: "Manage your saved addresses",
              ),
              const AccountListTile(
                icon: Iconsax.bag_2_outline,
                title: "My Cart",
                subtitle: "View and edit items in your cart",
              ),
              const AccountListTile(
                icon: Iconsax.shop_add_outline,
                title: "My Orders",
                subtitle: "Track and manage your orders",
              ),
              const AccountListTile(
                icon: Iconsax.bank_outline,
                title: "Bank Account",
                subtitle: "Link or update your bank account",
              ),
              const AccountListTile(
                icon: Iconsax.discount_shape_outline,
                title: "My Coupons",
                subtitle: "View your available coupons",
              ),
              const AccountListTile(
                icon: Iconsax.notification_outline,
                title: "Notifications",
                subtitle: "Manage notification settings",
              ),
              const AccountListTile(
                icon: Iconsax.security_safe_outline,
                title: "Account Privacy",
                subtitle: "Control your privacy preferences",
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextheader(
                  title: "App Settings",
                  showTextButton: false,
                  titleColor: Theme.of(context).colorScheme.onSurface),
              const SizedBox(
                height: 16,
              ),
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
          ),
        )
      ]),
    ));
  }
}
