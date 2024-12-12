
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomForgetPasswordSection extends StatelessWidget {
  const CustomForgetPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Forget your password?'),
        GestureDetector(
            child: Text('Resset your password',
                style: AppFontStyle.underLineText)),
      ],
    );
  }
}