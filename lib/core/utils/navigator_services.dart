import 'package:flutter/material.dart';

abstract class AppNavigatorServices {
  static void pushReplacement(BuildContext context, {required Widget screen}) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }

  static void pushRemoveUntil(BuildContext context, {required Widget screen}) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
      (Route<dynamic> route) => false,
    );
  }

  static void push(BuildContext context, {required Widget screen}) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
