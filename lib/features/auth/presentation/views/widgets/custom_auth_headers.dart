import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomAuthHeaders extends StatelessWidget {
  const CustomAuthHeaders({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFontStyle.titleFonts30,
        ),
        const Gap(10),
        Text(subtitle, style: AppFontStyle.greyFont15),
      ],
    );
  }
}
