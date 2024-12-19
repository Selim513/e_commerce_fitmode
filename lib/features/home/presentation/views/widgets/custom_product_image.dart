import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_helper.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AssetsHelper.image('product'),
    );
  }
}
