import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.greycolor,
      indent: 20,
      endIndent: 20,
    );
  }
}
