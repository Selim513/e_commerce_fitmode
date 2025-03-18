
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_checkout_detail_row.dart';
import 'package:flutter/material.dart';

class CustomOrderDetail extends StatelessWidget {
  const CustomOrderDetail({
    super.key,
    required this.subtotal,
    // required this.vat,
    required this.shipping,
    required this.total,
  });

  final String subtotal;
  // final String vat;
  final String shipping;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        CheckOutDetailRow(title: 'Sup-total', price: subtotal),
        // CheckOutDetailRow(title: 'Vat (%)', price: vat),
        CheckOutDetailRow(title: 'Shipping fee', price: shipping),
        const CustomDivider(),
        CheckOutDetailRow(
          title: 'Total',
          price: total,
          fontColor: Colors.black,
        ),
      ],
    );
  }
}
