import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/navigator_services.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/checkout_order_details_model/checkout_order_details.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/checkout_view.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:flutter/material.dart';

import 'custom_order_details.dart';

class CustomCheckOutSection extends StatelessWidget {
  const CustomCheckOutSection({
    super.key,
    required this.checkOutOrderDetails, required this.productmodel,
  });
  final CheckOutOrderDetails checkOutOrderDetails;
  final List<ProductsModel> productmodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        CustomOrderDetail(
            subtotal: checkOutOrderDetails.subtotal,
            vat: checkOutOrderDetails.vat,
            shipping: checkOutOrderDetails.shipping,
            total: checkOutOrderDetails.total),
        CustomElevatedButton(
          widget: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Go to Checkout',
                style: AppFontStyle.buttonTextStyle,
              ),
              const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
              )
            ],
          ),
          onPress: () {
            AppNavigatorServices.push(context,
                screen: CheckoutView(
                  checkoutDetails: CheckOutOrderDetails(
                      subtotal: checkOutOrderDetails.subtotal,
                      vat: checkOutOrderDetails.vat,
                      shipping: checkOutOrderDetails.shipping,
                      total: checkOutOrderDetails.total),
                ));
          },
        ),
      ],
    );
  }
}
