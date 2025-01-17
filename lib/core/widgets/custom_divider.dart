import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.color,
    this.thikNess, this.indent, this.endIndent,
  });
  final Color? color;
  final double? thikNess;
  final double? indent;
  final double? endIndent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? AppColors.greycolor,
      indent: indent ?? 20,
      endIndent: endIndent ?? 20,
      thickness: thikNess,
    );
  }
}
