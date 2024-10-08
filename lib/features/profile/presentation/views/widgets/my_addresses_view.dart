import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/address_container.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import 'add_new_address.dart';

class MyAddressesView extends StatefulWidget {
  const MyAddressesView({super.key});

  @override
  State<MyAddressesView> createState() => _MyAddressesViewState();
}

class _MyAddressesViewState extends State<MyAddressesView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddNewAddress()));
        },
        child: const Icon(Iconsax.add_outline),
      ),
      appBar: CustomAppBar(
        padding: 5,
        title: Text("My Addresses",
            style: AppStyles.styleRalewayBold17.copyWith(
                fontSize: 22, color: Theme.of(context).colorScheme.onSurface)),
        showBackArow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: List.generate(
                8,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: AddressContainer(
                          isSelected: selectedIndex == index,
                        ),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
