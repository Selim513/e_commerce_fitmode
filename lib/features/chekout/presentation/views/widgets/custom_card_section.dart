
import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/app_fonts.dart';

class CustomAddCard extends StatelessWidget {
  const CustomAddCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.greycolor,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          AssetsHelper.icons(name: 'Visa', width: 45),
          const Gap(5),
          Text(
            '**** **** **** 2512',
            style: AppFontStyle.reqgularFont,
          ),
          const Spacer(),
          AssetsHelper.icons(name: 'Edit')
        ],
      ),
    );
  }
}
