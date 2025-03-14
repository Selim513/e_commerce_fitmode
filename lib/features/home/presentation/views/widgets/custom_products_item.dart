import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/navigator_services.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/product_details_view.dart';
import 'package:flutter/material.dart';

import 'cusotm_product_item_with_saved_icon.dart';

class CustomProductsItem extends StatelessWidget {
  const CustomProductsItem({
    super.key,
    required this.products,
  });
  final ProductsModel products;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppNavigatorServices.push(context,
          screen: ProductsDetails(products: products)),
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomProductItemWithSavedIcon(
            products: products,
            image: products.image ?? '',
          ),
          Text(
            products.title,
            maxLines: 1,
            style:
                AppFontStyle.reqgularFont.copyWith(fontWeight: FontWeight.w500),
          ),
          Text(
            '\$ ${products.price ?? 'out of Stok'}',
            style: AppFontStyle.greyFont15,
          )
        ],
      ),
    );
  }
}
