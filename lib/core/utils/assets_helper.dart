import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class AssetsHelper {
  static SvgPicture svgPicture(String name) {
    return SvgPicture.asset(
      'assets/svg/$name.svg',
      fit: BoxFit.cover,
    );
  }

  static Image image(String name) {
    return Image.asset(
      'assets/images/$name.png',
    );
  }

  static SvgPicture icons({required String name}) {
    return SvgPicture.asset(
      'assets/icons/$name.svg',
      width: 20,
    );
  }
}
