import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:flutter/material.dart';

import 'cusotm_product_item_with_saved_icon.dart';

class CutomProductsItem extends StatelessWidget {
  const CutomProductsItem({
    super.key,
    required this.products,
  });
  final ProductsModel products;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomProductItemWithSavedIcon(
          image: products.image ?? '',
        ),
        Text(
          products.title ?? '',
          maxLines: 1,
          style:
              AppFontStyle.reqgularFont.copyWith(fontWeight: FontWeight.w500),
        ),
        Text(
          '\$ ${products.price ?? 'out of Stok'}',
          style: AppFontStyle.greyFont15,
        )
      ],
    );
  }
}
