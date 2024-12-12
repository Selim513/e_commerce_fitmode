import 'package:flutter/material.dart';

abstract class AppFontStyle {
  static TextStyle buttonTextStyle =
      const TextStyle(fontSize: 16, color: Colors.white);
  static TextStyle titleFonts35 =
      const TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
  static TextStyle titleFonts30 =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static TextStyle greyFont15 = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xff808080));
  static TextStyle reqgularFont = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500);
  static TextStyle underLineText = const TextStyle(
    fontSize: 13,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    decorationThickness: 2.0, // Customize underline thickness

    decoration: TextDecoration.underline,
  );
}
