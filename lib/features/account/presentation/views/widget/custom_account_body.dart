import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/features/account/presentation/models/account_model.dart';
import 'package:e_commerce_fitmode/features/account/presentation/views/widget/custom_account_information_section.dart';
import 'package:e_commerce_fitmode/features/account/presentation/views/widget/custom_row_account_list_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_account_divider.dart';

class CustomAccountBody extends StatelessWidget {
  const CustomAccountBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
          child: Column(
            children: [
              CustomDivider(
                color: AppColors.greycolor,
              ),
              const Gap(15),
              CustomRowAccountListItem(
                icon: accountDetailsList[0].icon,
                title: accountDetailsList[0].title,
              ),
            ],
          ),
        ),
        const CustomAccountDivider(),
        const CustomAccountInformationSection(),
        const CustomAccountDivider(),
        const Text('data')
      ],
    );
  }
}
