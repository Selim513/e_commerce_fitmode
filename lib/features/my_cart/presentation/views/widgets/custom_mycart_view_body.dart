import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/my_cart/presentation/views/widgets/custom_mycart_product_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_checkout_section.dart';

class CustomMyCartViewBody extends StatelessWidget {
  const CustomMyCartViewBody({super.key, required this.product});
  final List<ProductsModel> product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 5,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: product.length,
              itemBuilder: (context, index) =>
                   CustomMyCartProductContainer(
                    product: product[index],
                   ),
            ),
          ),
          const CustomCheckOutSection(),
          const Gap(10),
        ],
      ),
    );
  }
}
