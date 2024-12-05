import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.suffixIcon,
    required this.hinttText,
    this.validator,
    this.controller,
     this.obsecure,
  });
  final void Function(String value)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String hinttText;
  final bool? obsecure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure ?? false,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        focusedBorder: outLineBorders(),
        enabledBorder: outLineBorders(),
        hintText: hinttText,
        hintStyle: AppFontStyle.greyFont15,
        suffixIcon: suffixIcon,
      ),
    );
  }

  OutlineInputBorder outLineBorders() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(color: Color(0xffE6E6E6)));
  }
}
