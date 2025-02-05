import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/assets_helper.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      
      imageUrl: image,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) => AssetsHelper.image('404'),
      progressIndicatorBuilder: (context, url, progress) =>
          const Center(child: CircularProgressIndicator()),
    );
  }
}
