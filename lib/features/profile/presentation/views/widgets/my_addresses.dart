// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/features/profile/presentation/views/widgets/address_container.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/widgets/custom_app_bar.dart';

class MyAddresses extends StatefulWidget {
  const MyAddresses({super.key});

  @override
  State<MyAddresses> createState() => _MyAddressesState();
}

class _MyAddressesState extends State<MyAddresses> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Iconsax.add_outline),
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
