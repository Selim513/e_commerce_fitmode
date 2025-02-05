import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'custom_checkout_detail_row.dart';

class CustomCheckOutSection extends StatelessWidget {
  const CustomCheckOutSection({
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
    return Column(
      spacing: 5,
      children: [
        CheckOutDetailRow(title: 'Sup-total', price: subtotal),
        CheckOutDetailRow(title: 'Vat (%)', price: vat),
        CheckOutDetailRow(title: 'Shipping fee', price: shipping),
        const CustomDivider(),
        CheckOutDetailRow(
          title: 'Total',
          price: total,
          fontColor: Colors.black,
        ),
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
          onPress: () {},
        ),
      ],
    );
  }
}
