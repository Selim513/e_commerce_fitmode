import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/home_view.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/search_view.dart';
import 'package:e_commerce_fitmode/features/my_cart/presentation/views/my_cart_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: const [HomeView(), SearchView(), MyCartView()],
      items: [
        _buildNavBarItem(
            icon: const Icon(
              CupertinoIcons.home,
            ),
            title: 'Home'),
        _buildNavBarItem(
            icon: const Icon(
              CupertinoIcons.search,
            ),
            title: 'Search'),
        _buildNavBarItem(
            icon: const Icon(
              CupertinoIcons.cart,
            ),
            title: 'MyCart'),
      ],
      padding: const EdgeInsets.symmetric(vertical: 5),
      confineToSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      navBarStyle: NavBarStyle.style8,
    );
  }

  PersistentBottomNavBarItem _buildNavBarItem(
      {required Widget icon, required String title}) {
    return PersistentBottomNavBarItem(
        icon: icon,
        title: title,
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: AppColors.greycolor);
  }
}
