import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

import 'cusotm_product_item_with_saved_icon.dart';

class CutomProductsItem extends StatelessWidget {
  const CutomProductsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomProductItemWithSavedIcon(),
        Text(
          'Regular Fit Slogan',
          style:
              AppFontStyle.reqgularFont.copyWith(fontWeight: FontWeight.w500),
        ),
        Text(
          '\$ 1,190',
          style: AppFontStyle.greyFont15,
        )
      ],
    );
  }
}
