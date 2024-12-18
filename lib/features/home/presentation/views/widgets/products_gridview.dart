import 'package:flutter/material.dart';

import 'custom_products_item.dart';

class ProductsGridVew extends StatelessWidget {
  const ProductsGridVew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        return const CutomProductsItem();
      },
    ));
  }
}
