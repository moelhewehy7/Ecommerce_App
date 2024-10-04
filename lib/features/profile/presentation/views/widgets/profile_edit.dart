// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:icons_plus/icons_plus.dart';

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
            CustomTextheader(
                title: "Profile Information",
                showTextButton: false,
                titleColor: Theme.of(context).colorScheme.onSurface),
            SizedBox(
              height: 16,
            ),
            ProfileInfoRow(
              onPressed: () {},
              leading: "Name",
              title: "mohamed elhwehy",
              icon: Iconsax.arrow_right_3_outline,
            ),
            ProfileInfoRow(
              onPressed: () {},
              leading: "User name",
              title: "moElhewehy",
              icon: Iconsax.arrow_right_3_outline,
            ),
            SizedBox(
              height: 16,
            ),
            Divider(),
            SizedBox(
              height: 16,
            ),
            CustomTextheader(
                title: "Personal Information",
                showTextButton: false,
                titleColor: Theme.of(context).colorScheme.onSurface),
            SizedBox(
              height: 16,
            ),
            ProfileInfoRow(
              onPressed: () {},
              leading: "User Id",
              title: "user12465",
              icon: Iconsax.arrow_right_3_outline,
            ),
            ProfileInfoRow(
              onPressed: () {},
              leading: "E-mail",
              title: "m.osama_el7ewehy@yahoo.com",
              icon: Iconsax.arrow_right_3_outline,
            ),
            ProfileInfoRow(
              onPressed: () {},
              leading: "Phone number",
              title: "+2001204905252",
              icon: Iconsax.arrow_right_3_outline,
            ),
            ProfileInfoRow(
              onPressed: () {},
              leading: "Gender",
              title: "Male",
              icon: Iconsax.arrow_right_3_outline,
            ),
            ProfileInfoRow(
              onPressed: () {},
              leading: "Date of birth",
              title: "21/7/2024",
              icon: Iconsax.arrow_right_3_outline,
            ),
            SizedBox(
              height: 16,
            ),
            TextButton(
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

class ProfileInfoRow extends StatelessWidget {
  const ProfileInfoRow({
    super.key,
    required this.leading,
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  final String leading, title;
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Text(
              leading,
              style: AppStyles.styleRalewayBold17
                  .copyWith(fontSize: 16, color: Colors.grey),
            )),
        Expanded(
            flex: 3,
            child: Text(
              title,
              style: AppStyles.styleRalewayBold17.copyWith(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )),
        Expanded(
          child: IconButton(onPressed: onPressed, icon: Icon(icon)),
        )
      ],
    );
  }
}
