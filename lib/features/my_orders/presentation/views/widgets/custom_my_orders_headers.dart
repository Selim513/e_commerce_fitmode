import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'custom_headers_body.dart';

class CustomMyOrdersHeaders extends StatelessWidget {
  const CustomMyOrdersHeaders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.greycolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const CustomMyOrdersHeadersBody(),
    );
  }
}
