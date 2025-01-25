import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'custom_checkout_detail_row.dart';

class CustomCheckOutSection extends StatelessWidget {
  const CustomCheckOutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        const CheckOutDetailRow(title: 'Sup-total', price: '5,870'),
        const CheckOutDetailRow(title: 'Vat (%)', price: '0.00'),
        const CheckOutDetailRow(title: 'Shipping fee', price: '80'),
        const CustomDivider(),
        const CheckOutDetailRow(
          title: 'Total',
          price: '5,950',
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
