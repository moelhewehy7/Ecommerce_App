import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:flutter_application2/core/widgets/text_fields.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/utils/app_styles.dart';
import 'country_search_field.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({super.key});

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  TextEditingController countryController = TextEditingController();
  String selectedCountry = 'Select Country';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Add New Address",
            style: AppStyles.styleRalewayBold17.copyWith(
                fontSize: 22, color: Theme.of(context).colorScheme.onSurface)),
        showBackArow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const BasicTextForm(text: "Name", icon: Iconsax.user_outline),
              const SizedBox(
                height: 16,
              ),
              const BasicTextForm(
                  text: "Phone number", icon: Iconsax.mobile_outline),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Expanded(
                      child:
                          BasicTextForm(text: "Street", icon: Icons.edit_road)),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: BasicTextForm(
                          text: "Postal code", icon: Iconsax.code_outline)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Expanded(
                      child: BasicTextForm(
                          text: "City", icon: Iconsax.location_outline)),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: BasicTextForm(
                          text: "State", icon: Iconsax.map_outline)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              CountrySearchField(countryController: countryController),
              const SizedBox(
                height: 24,
              ),
              CustomFilledButton(
                text: "Save",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
