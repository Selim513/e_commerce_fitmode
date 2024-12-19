
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

import 'custom_product_image.dart';

class CutomProductsItem extends StatelessWidget {
  const CutomProductsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomProductImage(),
            Text(
              'Regular Fit Slogan',
              style: AppFontStyle.reqgularFont
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              '\$ 1,190',
              style: AppFontStyle.greyFont15,
            )
          ],
        ),
        Positioned(
          right: 15,
          top: 10,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: AssetsHelper.icons(name: 'Heart'),
          ),
        ),
      ],
    );
  }
}

