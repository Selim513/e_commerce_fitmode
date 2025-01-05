import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomSizeElevatedButton extends StatelessWidget {
  const CustomSizeElevatedButton({
    super.key,
    this.onPressed,
    required this.name,
    this.color,
  });
  final void Function()? onPressed;
  final String name;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 13),
            shape: ContinuousRectangleBorder(
                side: BorderSide(color: AppColors.greycolor),
                borderRadius: BorderRadius.circular(15))),
        onPressed: onPressed,
        child: Text(
          name,
          style: AppFontStyle.reqgularFont.copyWith(fontSize: 20),
        ));
  }
}
