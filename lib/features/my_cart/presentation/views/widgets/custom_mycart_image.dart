import 'package:flutter/material.dart';

class CustomMyCartProductImage extends StatelessWidget {
  const CustomMyCartProductImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.12,
      child: Image.network(image ?? ""),
    );
  }
}
