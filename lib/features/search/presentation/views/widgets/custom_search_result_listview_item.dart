import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_divider.dart';

class CustomSearchResultListViewItem extends StatelessWidget {
  const CustomSearchResultListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minVerticalPadding: 25,
          // leading: const CustomProductImage(),
          title: Text(
            'Regular Fit Slogan',
            style:
                AppFontStyle.reqgularFont.copyWith(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            '\$ 1,190',
            style: AppFontStyle.greyFont15.copyWith(fontSize: 14),
          ),
          trailing: const Icon(CupertinoIcons.arrow_up_right),
        ),
        const CustomDivider()
      ],
    );
  }
}
