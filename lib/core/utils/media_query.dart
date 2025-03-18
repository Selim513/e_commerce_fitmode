import 'package:flutter/widgets.dart';

abstract class CustomMediaQuery {
  static double mediaQueryHeight(context, {required double num}) {
    return MediaQuery.sizeOf(context).height * num;
  }

  static double mdiaQueryWidth(context, {required double num}) {
    return MediaQuery.sizeOf(context).width * num;
  }
}
