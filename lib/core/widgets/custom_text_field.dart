import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.controller,
      this.onChanged,
      this.readOnly = false});
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        hintStyle: AppFontStyle.greyFont15,
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: customOutLineBorders(),
        errorBorder: customOutLineBorders(),
        enabledBorder: customOutLineBorders(),
        focusedBorder: customOutLineBorders(),
      ),
    );
  }
}
