import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.widget,
    this.onPress,
  });
  final Widget widget;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.black),
          onPressed: onPress,
          child: widget),
    );
  }
}
