import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_products_item.dart';
import 'package:flutter/material.dart';

import '../../../../home/data/home_model/products_model/products_model.dart';

class CustomSavedProductItem extends StatelessWidget {
  const CustomSavedProductItem({super.key, required this.product});
  final List<ProductsModel> product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        itemCount: product.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => CustomProductsItem(
          products: product[index],
        ),
      ),
    );
  }
}
