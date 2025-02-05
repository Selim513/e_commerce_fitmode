// import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
// import 'package:e_commerce_fitmode/features/my_cart/presentation/views/widgets/custom_mycart_product_container.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// import '../../../../../core/utils/function_helper.dart';
// import 'custom_checkout_section.dart';

// class CustomMyCartViewBody extends StatelessWidget {
//   const CustomMyCartViewBody({super.key, required this.product});
//   final List<ProductsModel> product;

//   @override
//   Widget build(BuildContext context) {
//     double subtotal =
//         product.fold(0.0, (sum, item) => sum + (item.price! * item.quantity));
//     double vat = subtotal * 0.15; // 15% VAT
//     double shippingFee = 25.0;
//     double total = subtotal + vat + shippingFee;
//     // Format values
//     String subtotalStr = AppFormatters.formatPrice(subtotal);
//     String vatStr = AppFormatters.formatPrice(vat);
//     String shippingStr = AppFormatters.formatPrice(shippingFee);
//     String totalStr = AppFormatters.formatPrice(total);
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: Column(
//         spacing: 5,
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: product.length,
//               itemBuilder: (context, index) => CustomMyCartProductContainer(
//                 product: product[index],
//               ),
//             ),
//           ),
//           CustomCheckOutSection(
//             subtotal: subtotalStr,
//             vat: vatStr,
//             shipping: shippingStr,
//             total: totalStr,
//           ),
//           const Gap(10),
//         ],
//       ),
//     );
//   }
// }
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_mycart_product_container.dart';
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
    final double vat = AppFormatters.calculateVat(subtotal);
    final double total =
        AppFormatters.calculateTotal(subtotal, vat, shippingFee);

    final String formattedSubtotal = AppFormatters.formatPrice(subtotal);
    final String formattedVat = AppFormatters.formatPrice(vat);
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
            subtotal: formattedSubtotal,
            vat: formattedVat,
            shipping: formattedShippingFee,
            total: formattedTotal,
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
