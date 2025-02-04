import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_divider.dart';

class CustomSearchResultListViewItem extends StatelessWidget {
  const CustomSearchResultListViewItem({
    super.key,
    required this.product,
  });
  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minVerticalPadding: 25,
          leading: Image.network(product.image ?? ''),
          title: Text(
            product.title,
            style:
                AppFontStyle.reqgularFont.copyWith(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            '\$ ${product.price}',
            style: AppFontStyle.greyFont15.copyWith(fontSize: 14),
          ),
          trailing: const Icon(CupertinoIcons.arrow_up_right),
        ),
        const CustomDivider()
      ],
    );
  }
}
