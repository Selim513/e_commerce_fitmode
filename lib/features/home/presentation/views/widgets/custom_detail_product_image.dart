import 'package:e_commerce_fitmode/core/widgets/custom_cached_network_image_widget.dart';
import 'package:flutter/material.dart';

class CustomProductDetailImage extends StatelessWidget {
  const CustomProductDetailImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.45,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CustomCachedNetworkImage(image: image),
      ),
    );
  }
}
