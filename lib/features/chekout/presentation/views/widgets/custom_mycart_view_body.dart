import 'package:e_commerce_fitmode/features/chekout/data/model/checkout_order_details_model/checkout_order_details.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_mycart_product_container.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/function_helper.dart';
import 'custom_checkout_section.dart';

class CustomMyCartViewBody extends StatelessWidget {
  const CustomMyCartViewBody({super.key, required this.product});
  final List<ProductsModel> product;

  @override
  Widget build(BuildContext context) {
    const double shippingFee = 25.0;

    final double subtotal = AppFormatters.calculateSubtotal(product);
    // final double vat = AppFormatters.calculateVat(subtotal);
    final double total = AppFormatters.calculateTotal(subtotal, shippingFee);

    final String formattedSubtotal = AppFormatters.formatPrice(subtotal);
    // final String formattedVat = AppFormatters.formatPrice(vat);
    final String formattedShippingFee = AppFormatters.formatPrice(shippingFee);
    final String formattedTotal = AppFormatters.formatPrice(total);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 5,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: product.length,
              itemBuilder: (context, index) => CustomMyCartProductContainer(
                product: product[index],
              ),
            ),
          ),
          CustomCheckOutSection(
            productmodel: product,
            checkOutOrderDetails: CheckOutOrderDetails(
              subtotal: formattedSubtotal,
              // vat: formattedVat,
              shipping: formattedShippingFee,
              total: formattedTotal,
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
