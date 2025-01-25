import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

class CustomMyCartProductImage extends StatelessWidget {
  const CustomMyCartProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.12,
        child: AssetsHelper.image('product'));
  }
}