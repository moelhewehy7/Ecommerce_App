import 'package:flutter/material.dart';
import 'package:flutter_application2/features/home/presentation/views/home_view.dart';
import 'package:flutter_application2/features/profile/presentation/views/profile_view.dart';
import 'package:flutter_application2/features/store/presentation/store_view.dart';

import 'package:icons_plus/icons_plus.dart';

import 'wishlist/presentation/views/wishlist_view.dart';

class BottomNavigationBarMenu extends StatefulWidget {
  const BottomNavigationBarMenu({super.key});

  @override
  State<BottomNavigationBarMenu> createState() =>
      _BottomNavigationBarMenuState();
}

class _BottomNavigationBarMenuState extends State<BottomNavigationBarMenu> {
  int _selectedIndex = 0;
  List<Widget> pages = const [
    HomeView(),
    StoreView(),
    WishlistView(),
    ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            pages[_selectedIndex], // Displaying the current page based on index
        bottomNavigationBar: NavigationBar(
            elevation: 0,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            destinations: const [
              NavigationDestination(
                selectedIcon: Icon(Iconsax.home_1_bold),
                icon: Icon(Iconsax.home_1_outline),
                label: "Home",
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Iconsax.shop_bold,
                ),
                icon: Icon(
                  Iconsax.shop_outline,
                ),
                label: "Store",
              ),
              NavigationDestination(
                selectedIcon: Icon(Iconsax.heart_bold),
                icon: Icon(Iconsax.heart_outline),
                label: "Whishlist",
              ),
              NavigationDestination(
                selectedIcon: Icon(Iconsax.user_bold),
                icon: Icon(Iconsax.user_outline),
                label: "Profile",
              ),
            ]));
  }
}
