import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.color,
    this.height,
  });
  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? AppColors.greycolor,
      indent: 20,
      endIndent: 20,
      thickness: height,
    );
  }
}
