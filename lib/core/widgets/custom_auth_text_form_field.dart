import 'package:e_commerce_fitmode/constant.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:e_commerce_fitmode/core/utils/validate_helper.dart';
import 'package:flutter/material.dart';

class CustomAuthTextFormField extends StatefulWidget {
  const CustomAuthTextFormField({
    super.key,
    this.onChanged,
    this.suffixIcon,
    required this.hinttText,
    this.validator,
    this.controller,
    this.obsecure,
    required this.dynamicSuffixIcon,
    required this.fieldType,
    this.isLogin,
  });
  final void Function(String value)? onChanged;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String hinttText;
  final bool? obsecure;
  final bool dynamicSuffixIcon;
  final String fieldType;
  final bool? isLogin;

  @override
  State<CustomAuthTextFormField> createState() =>
      _CustomAuthTextFormFieldState();
}

class _CustomAuthTextFormFieldState extends State<CustomAuthTextFormField> {
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
        if (widget.fieldType == typeFieldName) {
          isValid = value.isNotEmpty && value.length > 3;
        } else if (widget.fieldType == typeFieldEmail) {
          isValid = Validate.emailValidate(value);
        } else if (widget.fieldType == typeFieldPassword) {
          isValid = value.isNotEmpty && value.length >= 8;
        }
        check = value.isNotEmpty;
        setState(() {});
        // check = widget.validator!(value) == null;
        widget.onChanged?.call(value);
      },
      decoration: InputDecoration(
        focusedBorder:
            customOutLineBorders(color: isValid ? Colors.green : Colors.red),
        enabledBorder: customOutLineBorders(color: const Color(0xffE6E6E6)),
        focusedErrorBorder: customOutLineBorders(color: Colors.red),
        errorBorder: customOutLineBorders(color: Colors.red),
        hintText: widget.hinttText,
        hintStyle: AppFontStyle.greyFont15,
        suffixIcon: widget.dynamicSuffixIcon && widget.controller!.text.isEmpty
            ? widget.suffixIcon
            : (check
                ? isValid
                    ? const Icon(Icons.check_circle_outline,
                        color: Colors.green)
                    : const Icon(Icons.error_outline_outlined,
                        color: Colors.red)
                : null),
      ),
    );
  }
}
