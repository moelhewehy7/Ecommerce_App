import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../core/widgets/custom_view_header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        CustomViewHeader(
          child: ProfileViewHeaderBody(),
        ),
        CustomTextheader(
            title: "Account",
            titleColor: Theme.of(context).colorScheme.onSurface,
            showTextButton: false),
      ]),
    ));
  }
}

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
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mohamed Elehwehy",
                  style: AppStyles.styleRalewayBold17
                      .copyWith(color: Theme.of(context).colorScheme.surface)),
              Text("m.elhewehy@yahoo.com",
                  style: AppStyles.styleNunitoSansRegular15.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.surface)),
            ],
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.edit_outline,
                color: Theme.of(context).colorScheme.surface,
              )),
        ),
        SizedBox(
          height: 32,
        )
      ],
    );
  }
}
