
import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAddressIndicator extends StatelessWidget {
  const CustomAddressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 5,
      decoration: BoxDecoration(
          color: AppColors.greycolor,
          borderRadius: const BorderRadius.all(
              Radius.circular(15))),
    );
  }
}
