import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/payment_method_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomPaymentMethodContainer extends StatelessWidget {
  const CustomPaymentMethodContainer({
    super.key,
    required this.detail,
    this.isSelcted = false,
  });
  final PaymentMethodModel detail;
  final bool isSelcted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: isSelcted ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.greycolor),
        ),
        child: Row(
          children: [
            Icon(
              detail.icon,
              color: isSelcted ? Colors.white : Colors.black,
            ),
            const Gap(5),
            Text(
              detail.title,
              style: AppFontStyle.reqgularFont
                  .copyWith(color: isSelcted ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
