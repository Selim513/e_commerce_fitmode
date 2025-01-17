import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomRowAccountListItem extends StatelessWidget {
  const CustomRowAccountListItem({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AssetsHelper.icons(name: icon, width: 25),
        const Gap(20),
        Text(
          title,
          style: AppFontStyle.reqgularFont.copyWith(fontSize: 18),
        ),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
