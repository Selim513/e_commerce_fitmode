import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/app_colors.dart';
import 'custom_row_account_list_item.dart';

class CustomContainerAccountListItem extends StatelessWidget {
  const CustomContainerAccountListItem(
      {super.key, required this.title, required this.icon});
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
      child: Column(
        children: [
          CustomRowAccountListItem(icon: icon, title: title),
          const Gap(20),
          CustomDivider(
            color: AppColors.greycolor,
          )
        ],
      ),
    );
  }
}
