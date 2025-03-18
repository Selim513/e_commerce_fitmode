import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/checkout_order_details_model/checkout_order_details.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:flutter/material.dart';

import 'widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({
    super.key,
    required this.checkoutDetails,
    required this.product,
  });
  final CheckOutOrderDetails checkoutDetails;
  final List<ProductsModel> product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomPrimariyAppBar(
        appBarTitle: 'Checkout',
        isArrowBack: true,
      ),
      body: CheckOutViewBody(
        product:product,
        checkoutDetails: checkoutDetails,
      ),
    );
  }
}
