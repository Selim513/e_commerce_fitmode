import 'package:e_commerce_fitmode/features/account/presentation/models/account_model.dart';
import 'package:e_commerce_fitmode/features/account/presentation/views/widget/custom_account_information_section.dart';
import 'package:e_commerce_fitmode/features/account/presentation/views/widget/custom_account_list_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_account_divider.dart';
import 'custom_logou_section.dart';

class CustomAccountBody extends StatelessWidget {
  const CustomAccountBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainerAccountListItem(
          title: accountDetailsList[0].title,
          icon: accountDetailsList[0].icon,
          isFirst: false,
          isLast: true,
        ),
        const Gap(10),
        const CustomAccountDivider(),
        const Gap(10),
        const CustomAccountInformationSection(),
        const Gap(10),
        const CustomAccountDivider(),
        const Gap(10),
        const CustomContainerAccountListItem(
          title: 'FAQs',
          icon: 'Question',
          isFirst: true,
          isLast: false,
        ),
        const CustomContainerAccountListItem(
          title: 'Help Center',
          icon: 'Headphones',
          isFirst: true,
          isLast: true,
        ),
        const CustomAccountDivider(),
        const CustomLogoutSection()
      ],
    );
  }
}
