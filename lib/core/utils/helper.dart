import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/text_field_helper.dart';
import 'package:flutter/material.dart';

void customScaffoldMessenger(BuildContext context,
    {required String successMessge, required bool isSuccess}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 500),
    content: Center(
        child: Text(
      successMessge,
      style: AppFontStyle.reqgularFont.copyWith(color: Colors.white),
    )),
    backgroundColor: isSuccess ? Colors.green : Colors.red,
  ));
}

String? checkEmailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Enter an email address';
  } else if (!Validate.emailValidate(value)) {
    return 'Enter a valid email address';
  }
  return null;
}

String? checkPasswordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'This field is required';
  } else if (value.length <= 7) {
    return 'Password must be bigger than 7 letters and numbers';
  }
  return null;
}
