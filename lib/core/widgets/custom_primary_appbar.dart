import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

class CustomPrimariyAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomPrimariyAppBar({
    super.key,
    required this.appBarTitle,
    this.isArrowBack = false,
    this.onPressed,
  });
  final String appBarTitle;
  final bool isArrowBack;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.black,
      title: Text(appBarTitle),
      titleTextStyle: const TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {},
            icon: AssetsHelper.icons(
              name: 'Bell',
            )),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
