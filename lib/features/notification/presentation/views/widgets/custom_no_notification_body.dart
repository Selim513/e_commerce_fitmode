import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomNoDatataWidget extends StatelessWidget {
  const CustomNoDatataWidget({
    super.key,
    required this.iconName,
    required this.title,
    required this.subTitle,
  });

  final String iconName;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Center(
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AssetsHelper.icons(
            name: iconName,
            width: width * 0.15,
          ),
          const Gap(5),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          Text(
            subTitle,
            style: AppFontStyle.greyFont15,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
