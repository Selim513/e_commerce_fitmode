import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

class CustomProductDetailImage extends StatelessWidget {
  const CustomProductDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.45,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AssetsHelper.image('product'),
      ),
    );
  }
}
