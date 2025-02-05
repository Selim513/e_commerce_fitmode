import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_products_item.dart';
import 'package:flutter/material.dart';

class ProductGridViewSuccessState extends StatelessWidget {
  const ProductGridViewSuccessState({
    super.key,
    required this.products,
  });

  final List<ProductsModel> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 15, maxCrossAxisExtent: 200, childAspectRatio: 1),
      itemBuilder: (context, index) {
        return CustomProductsItem(
          products: products[index],
        );
      },
    ));
  }
}
