import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/profile_view_body.dart';
import '../../../../core/widgets/custom_view_header.dart';
import 'widgets/account_listtiles.dart';
import 'widgets/app_setting_listtile.dart';

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
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextheader(
                    title: "Account",
                    titleColor: Theme.of(context).colorScheme.onSurface,
                    showTextButton: false),
              ),
              const SizedBox(
                height: 16,
              ),
              const AccountListTiles(),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextheader(
                    title: "App Settings",
                    showTextButton: false,
                    titleColor: Theme.of(context).colorScheme.onSurface),
              ),
              const SizedBox(
                height: 16,
              ),
              const AppSettingsListTile()
            ],
          ),
        )
      ]),
    ));
  }
}
