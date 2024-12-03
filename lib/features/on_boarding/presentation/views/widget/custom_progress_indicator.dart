
import 'package:flutter/material.dart';

class CustomCircularProgressIndiCator extends StatelessWidget {
  const CustomCircularProgressIndiCator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: CircularProgressIndicator(
            strokeWidth: 5,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            color: Colors.white,
          )),
    );
  }
}
