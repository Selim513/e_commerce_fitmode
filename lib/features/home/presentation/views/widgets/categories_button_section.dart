import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CategoriesButtonSection extends StatelessWidget {
  const CategoriesButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: ButtonsTabBar(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: Colors.black,
          unselectedBackgroundColor: Colors.white,
          unselectedBorderColor: AppColors.greycolor,
          radius: 10,
          borderWidth: 0.5,
          tabs: const [
            Tab(
              text: 'All',
            ),
            Tab(
              text: 'Tshirt',
            ),
            Tab(
              text: 'Jeans',
            ),
            Tab(
              text: 'Shose',
            ),
            Tab(
              text: 'Hodies',
            ),
          ]),
    );
  }
}
