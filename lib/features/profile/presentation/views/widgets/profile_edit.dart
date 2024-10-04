// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/personal_info.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/profile_info.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backArrowColor: Theme.of(context).colorScheme.onSurface,
        showBackArow: true,
        title: Text("Profile",
            style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            CircleAvatar(
              radius: 45,
            ),
            TextButton(onPressed: () {}, child: Text("Change profile picture")),
            SizedBox(
              height: 16,
            ),
            Divider(),
            SizedBox(
              height: 16,
            ),
            ProfileInformation(),
            Divider(),
            SizedBox(
              height: 16,
            ),
            PersonalInformation(),
            SizedBox(
              height: 16,
            ),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                onPressed: () {},
                child: Text(
                  "Delete Account",
                  style: TextStyle(color: Colors.red),
                )),
          ],
        ),
      ),
    );
  }
}
