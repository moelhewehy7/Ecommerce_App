import 'package:flutter/material.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/my_addresses.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/my_orders.dart';
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
          },
          icon: Iconsax.user_outline,
          title: "My Addresses",
          subtitle: "Manage your saved addresses",
        ),
        const AccountListTile(
          icon: Iconsax.bag_2_outline,
          title: "My Cart",
          subtitle: "View and edit items in your cart",
        ),
        AccountListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyOrders()));
          },
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
      ],
    );
  }
}
