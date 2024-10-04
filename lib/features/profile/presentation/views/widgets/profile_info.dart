import 'package:flutter/material.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/profile_info_row.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/widgets/custom_text_header.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
