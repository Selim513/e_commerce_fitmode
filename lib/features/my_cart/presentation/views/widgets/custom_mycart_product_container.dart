import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import 'custom_mycart_image.dart';
import 'custom_mycart_product_detail.dart';

class CustomMyCartProductContainer extends StatelessWidget {
  const CustomMyCartProductContainer({
    super.key,
    required this.product,
  });
  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.greycolor,
                width: 1,
              )),
          child: Row(
            children: [
              CustomMyCartProductImage(
                image: product['Image'],
              ),
               CustomMyCartProductDetails(
                product: product,
              )
            ],
          )),
    );
  }
}
