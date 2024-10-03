import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfileViewHeaderBody extends StatelessWidget {
  const ProfileViewHeaderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          padding: 20,
          title: Text("Account",
              style: AppStyles.styleRalewayBold17.copyWith(
                  fontSize: 22, color: Theme.of(context).colorScheme.surface)),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Image.asset("assets/images/pp.webp"),
            ),
          ),
          title: Text("Mohamed Elehwehy",
              style: AppStyles.styleRalewayBold17
                  .copyWith(color: Theme.of(context).colorScheme.surface)),
          subtitle: Text("m.elhewehy@yahoo.com",
              style: AppStyles.styleNunitoSansRegular15
                  .copyWith(color: Theme.of(context).colorScheme.surface)),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.edit_outline,
                color: Theme.of(context).colorScheme.surface,
              )),
        ),
        const SizedBox(
          height: 32,
        )
      ],
    );
  }
}
