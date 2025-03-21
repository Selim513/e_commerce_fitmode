import 'package:e_commerce_fitmode/core/model/app_navigation_bar_model.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/features/account/presentation/views/account_view.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/my_cart_view.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/home_view.dart';
import 'package:e_commerce_fitmode/features/saved_item/presentation/views/saved_item_view.dart';
import 'package:e_commerce_fitmode/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarHeight: 60,
      context,
      screens: const [
        HomeView(),
        SearchView(),
        SavedItemView(),
        MyCartView(),
        AccountView()
      ],
      items: navBarItemList.map((navItem) {
        return _buildNavBarItem(icon: navItem.icon, title: navItem.title);
      }).toList(),
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
        textStyle: AppFontStyle.reqgularFont.copyWith(fontSize: 14),
        activeColorPrimary: Colors.black,
        iconSize: 20,
        inactiveColorPrimary: Colors.grey);
  }
}
// class BottomNavBarView extends StatefulWidget {
//   const BottomNavBarView({super.key});

//   @override
//   State<BottomNavBarView> createState() => _BottomNavBarViewState();
// }

// class _BottomNavBarViewState extends State<BottomNavBarView> {
//   late PersistentTabController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = PersistentTabController(initialIndex: 0); // الصفحة الأولى
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView(
//       context,
//       controller: _controller, // استخدام الكنترولر هنا
//       screens: const [
//         HomeView(),
//         SearchView(),
//         SavedItemView(),
//         MyCartView(),
//         AccountView()
//       ],
//       items: navBarItemList.map((navItem) {
//         return _buildNavBarItem(icon: navItem.icon, title: navItem.title);
//       }).toList(),
//       padding: const EdgeInsets.symmetric(vertical: 5),
//       confineToSafeArea: true,
//       backgroundColor: Colors.white,
//       handleAndroidBackButtonPress: true,
//       navBarStyle: NavBarStyle.style8,
//     );
//   }

//   PersistentBottomNavBarItem _buildNavBarItem(
//       {required Widget icon, required String title}) {
//     return PersistentBottomNavBarItem(
//         icon: icon,
//         title: title,
//         textStyle: AppFontStyle.reqgularFont.copyWith(fontSize: 14),
//         activeColorPrimary: Colors.black,
//         iconSize: 20,
//         inactiveColorPrimary: Colors.grey);
//   }

//   // دالة التنقل يدويًا لأي صفحة
//   void navigateToPage(int index) {
//     _controller.jumpToTab(index);
//   }
// }
