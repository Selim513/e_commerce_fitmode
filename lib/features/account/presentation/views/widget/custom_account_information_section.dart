import 'package:e_commerce_fitmode/features/account/presentation/views/widget/custom_account_list_item.dart';
import 'package:flutter/material.dart';

import '../../models/account_model.dart';

class CustomAccountInformationSection extends StatelessWidget {
  const CustomAccountInformationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: accountDetailsList.length - 1,
      itemBuilder: (context, index) => CustomContainerAccountListItem(
        title: accountDetailsList[index + 1].title,
        icon: accountDetailsList[index + 1].icon,
        isFirst: true,
        isLast: index == accountDetailsList.length - 2,
      ),
    );
  }
}
