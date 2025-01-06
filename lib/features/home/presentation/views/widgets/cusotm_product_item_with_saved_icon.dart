import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_positioned_saved_heart.dart';
import 'package:flutter/material.dart';

import 'custom_product_image.dart';

class CustomProductItemWithSavedIcon extends StatelessWidget {
  const CustomProductItemWithSavedIcon({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomProductImage(
              image: image,
            ),
          ],
        ),
        const CustomPositionedSavedHeart(),
      ],
    );
  }
}
