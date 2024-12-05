import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.widget,
    this.onPress,
    this.color,
    this.borderSide,
  });
  final Widget widget;
  final void Function()? onPress;
  final Color? color;
  final BorderSide? borderSide;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: borderSide ?? BorderSide.none,
              ),
              backgroundColor: color ?? Colors.black),
          onPressed: onPress,
          child: widget),
    );
  }
}
