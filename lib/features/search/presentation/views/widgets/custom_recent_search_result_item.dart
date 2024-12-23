
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/widgets/custom_divider.dart';

class CustomRecentSearchResultItem extends StatelessWidget {
  const CustomRecentSearchResultItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Text(
                'Jeans',
                style: AppFontStyle.reqgularFont,
              ),
              const Spacer(),
              AssetsHelper.icons(name: 'cancel', width: 20)
            ],
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
