import 'package:flutter/material.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/my_addresses.dart';
import 'package:icons_plus/icons_plus.dart';

import 'account_list_tile.dart';

class AccountListTiles extends StatelessWidget {
  const AccountListTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AccountListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyAddresses(),
                ));
            print("tapped");
          },
          icon: Iconsax.user_outline,
          title: "My Addresses",
          subtitle: "Manage your saved addresses",
        ),
        AccountListTile(
          icon: Iconsax.bag_2_outline,
          title: "My Cart",
          subtitle: "View and edit items in your cart",
        ),
        AccountListTile(
          icon: Iconsax.shop_add_outline,
          title: "My Orders",
          subtitle: "Track and manage your orders",
        ),
        AccountListTile(
          icon: Iconsax.bank_outline,
          title: "Bank Account",
          subtitle: "Link or update your bank account",
        ),
        AccountListTile(
          icon: Iconsax.discount_shape_outline,
          title: "My Coupons",
          subtitle: "View your available coupons",
        ),
        AccountListTile(
          icon: Iconsax.notification_outline,
          title: "Notifications",
          subtitle: "Manage notification settings",
        ),
        AccountListTile(
          icon: Iconsax.security_safe_outline,
          title: "Account Privacy",
          subtitle: "Control your privacy preferences",
        ),
      ],
    );
  }
}
