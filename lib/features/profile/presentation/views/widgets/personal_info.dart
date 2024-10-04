import 'package:flutter/material.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/profile_info_row.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../core/widgets/custom_text_header.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextheader(
            title: "Personal Information",
            showTextButton: false,
            titleColor: Theme.of(context).colorScheme.onSurface),
        const SizedBox(
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
      ],
    );
  }
}
