import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

class CustomPersonImage extends StatelessWidget {
  const CustomPersonImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 50,
        right: -20,
        bottom: 5,
        child: SizedBox(
            // height: MediaQuery.sizeOf(context).height * 0.8,
            width: MediaQuery.sizeOf(context).width * 0.89,
            child: AssetsHelper.image('person')));
  }
}
