import 'package:e_commerce_fitmode/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_cached_network_image_widget.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Center(
        child: SizedBox(
          height: SizeConfig.screenHeight * 0.11,
          child: CustomCachedNetworkImage(image: image),
        ),
      ),
    );
  }
}
