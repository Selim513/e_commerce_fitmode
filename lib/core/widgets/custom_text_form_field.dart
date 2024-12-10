import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/text_field_helper.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.suffixIcon,
    required this.hinttText,
    this.validator,
    this.controller,
    this.obsecure,
    required this.dynamicSuffixIcon,
    required this.fieldType,
  });
  final void Function(String value)? onChanged;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String hinttText;
  final bool? obsecure;
  final bool dynamicSuffixIcon;
  final String fieldType;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool check = false;
  bool isValid = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obsecure ?? false,
      controller: widget.controller,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        if (widget.fieldType == 'Name') {
          isValid = value.isNotEmpty && value.length > 3;
        } else if (widget.fieldType == 'Email') {
          isValid = Validate.emailValidate(value);
        } else if (widget.fieldType == 'Password') {
          isValid = value.isNotEmpty && value.length >= 8;
        }
        check = value.isNotEmpty;
        setState(() {});
        // check = widget.validator!(value) == null;
        widget.onChanged?.call(value);
      },
      decoration: InputDecoration(
          focusedBorder:
              outLineBorders(color: isValid ? Colors.green : Colors.red),
          enabledBorder: outLineBorders(color: const Color(0xffE6E6E6)),
          focusedErrorBorder: outLineBorders(color: Colors.red),
          errorBorder: outLineBorders(color: Colors.red),
          hintText: widget.hinttText,
          hintStyle: AppFontStyle.greyFont15,
          suffixIcon:
              widget.dynamicSuffixIcon && widget.controller!.text.isEmpty
                  ? null
                  : (check
                      ? isValid
                          ? const Icon(Icons.check_circle_outline,
                              color: Colors.green)
                          : const Icon(Icons.error_outline_outlined,
                              color: Colors.red)
                      : null)),
    );
  }

  OutlineInputBorder outLineBorders({Color? color}) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: color ?? const Color(0xffE6E6E6)));
  }
}
