import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_order_details.dart';

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
        CustomOrderDetail(
            subtotal: subtotal, vat: vat, shipping: shipping, total: total),
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
            final Map<String, String> data = {
              'subtotal': subtotal,
              'vat': vat,
              'shipping': shipping,
              'total': total,
            };
            GoRouter.of(context).pushNamed(AppRoute.checkOut, extra: data);
          },
        ),
      ],
    );
  }
}
