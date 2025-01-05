import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          crossAxisSpacing: 15, maxCrossAxisExtent: 300, childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () =>
                GoRouter.of(context).pushNamed(AppRoute.productDetails),
            child: const CutomProductsItem());
      },
    ));
  }
}
