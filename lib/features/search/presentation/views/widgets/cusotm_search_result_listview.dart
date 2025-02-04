import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_search_result_listview_item.dart';

class CustomSearchResultListView extends StatelessWidget {
  const CustomSearchResultListView({
    super.key,
    required this.product,
  });
  final List<ProductsModel> product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: product.length,
      itemBuilder: (context, index) {
        return CustomSearchResultListViewItem(product: product[index]);
      },
    ));
  }
}
