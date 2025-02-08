import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/custom_delivery_section.dart';
import 'widgets/custom_order_summary_section.dart';
import 'widgets/custom_payment_method_section.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({
    super.key,
    required this.subtotal,
    required this.vat,
    required this.shipping,
    required this.total,
  });
  final String subtotal;
  final String vat;
  final String shipping;
  final String total;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomPrimariyAppBar(
        appBarTitle: 'Checkout',
        isArrowBack: true,
      ),
      body: CheckOutViewBody(
        shipping: shipping,
        subtotal: subtotal,
        total: total,
        vat: vat,
      ),
    );
  }
}

class CheckOutViewBody extends StatelessWidget {
  const CheckOutViewBody({
    super.key,
    required this.subtotal,
    required this.vat,
    required this.shipping,
    required this.total,
  });
  final String subtotal;
  final String vat;
  final String shipping;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            const CustomDivider(),
            const CustomDeliverySection(),
            const CustomDivider(),
            const CustomPaymentMethodSection(),
            const CustomDivider(),
            CustomOrderSummary(
              shipping: shipping,
              subtotal: subtotal,
              vat: vat,
              total: total,
            ),
            const Gap(30),
            CustomElevatedButton(
              widget: Text(
                'Place Order',
                style: AppFontStyle.buttonTextStyle,
              ),
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
