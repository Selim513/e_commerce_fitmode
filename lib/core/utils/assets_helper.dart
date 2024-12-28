import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class AssetsHelper {
  static SvgPicture svgPicture(String name) {
    return SvgPicture.asset(
      'assets/svg/$name.svg',
      fit: BoxFit.cover,
    );
  }

  static Image image(String name, {BoxFit? fit}) {
    return Image.asset(
      'assets/images/$name.png',
      // fit: BoxFit.cover,
    );
  }

  static SvgPicture icons({required String name, double? width}) {
    return SvgPicture.asset(
      'assets/icons/$name.svg',
      width: width ?? 25,
    );
  }
}
