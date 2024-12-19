import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';

class AppNavigationBarModel {
  final Widget icon;
  final String title;

  AppNavigationBarModel({required this.icon, required this.title});
}

List<AppNavigationBarModel> navBarItemList = [
  AppNavigationBarModel(
      icon: const Icon(FluentIcons.home_12_regular), title: 'Home'),
  AppNavigationBarModel(
      icon: const Icon(CupertinoIcons.search), title: 'Search'),
  AppNavigationBarModel(icon: const Icon(CupertinoIcons.heart), title: 'Heart'),
  AppNavigationBarModel(
      icon: const Icon(FluentIcons.person_circle_12_regular), title: 'Account'),
];
