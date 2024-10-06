import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/text_fields.dart';

class CountrySearchField extends StatelessWidget {
  const CountrySearchField({
    super.key,
    required this.countryController,
  });

  final TextEditingController countryController;

  @override
  Widget build(BuildContext context) {
    return BasicTextForm(
        controller: countryController,
        onTap: () {
          showCountryPicker(
            countryListTheme: CountryListThemeData(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              flagSize: 25,
              inputDecoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.search_normal_1_outline),
                hintText: "Search",
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                hintStyle: AppStyles.stylePoppinsMedium14
                    .copyWith(color: const Color(0xFF717171)),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            exclude: <String>[
              'IL',
            ],
            context: context,
            showPhoneCode:
                false, // optional. Shows phone code before the country name.
            onSelect: (Country country) {
              countryController.text = country.name;
            },
          );
        },
        text: "Country",
        icon: Iconsax.flag_outline);
  }
}
