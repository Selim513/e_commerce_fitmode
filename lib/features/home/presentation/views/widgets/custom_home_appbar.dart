import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            'Discover',
            style: AppFontStyle.titleFonts30,
          ),
          const Spacer(),
          GestureDetector(
              onTap: () =>
                  GoRouter.of(context).pushNamed(AppRoute.notification),
              child: AssetsHelper.icons(name: 'Bell', width: 25))
        ],
      ),
    );
  }
}
