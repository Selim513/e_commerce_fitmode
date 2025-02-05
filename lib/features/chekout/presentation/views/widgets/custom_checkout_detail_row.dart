import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CheckOutDetailRow extends StatelessWidget {
  const CheckOutDetailRow(
      {super.key, required this.title, required this.price, this.fontColor});
  final String title, price;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style:
              AppFontStyle.greyFont15.copyWith(color: fontColor, fontSize: 16),
        ),
        const Spacer(),
        Text(
          "\$ $price",
          style: AppFontStyle.reqgularFont.copyWith(fontSize: 20),
        )
      ],
    );
  }
}
