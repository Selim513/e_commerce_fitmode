import 'package:e_commerce_fitmode/constant.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/validate_helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';

class CustomNameTextFormFieldWidget extends StatelessWidget {
  const CustomNameTextFormFieldWidget({
    super.key,
    required this.authCubit,
  });

  final AuthCubit authCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
          style: AppFontStyle.reqgularFont,
        ),
        CustomTextFormField(
          fieldType: typeFieldName,
          validator: (value) {
            if (value!.isEmpty) {
              return 'this field is required';
            } else if (value.length < 3) {
              return 'The name must be at least 3 letters';
            } else if (Validate.nameValidate(value)) {
              return 'The name must contain only letters and spaces';
            }
            return null;
          },
          controller: authCubit.createAccountnameController,
          hinttText: 'Enter your Full name',
          dynamicSuffixIcon: true,
        ),
      ],
    );
  }
}
