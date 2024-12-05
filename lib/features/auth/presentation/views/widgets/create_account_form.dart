import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_facebook_sign_up_button.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_google_sign_up_button.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_or_section.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_privacy_cookie_use_text.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/login_navigator_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateAccountForm extends StatefulWidget {
  const CreateAccountForm({
    super.key,
  });

  @override
  State<CreateAccountForm> createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
          style: AppFontStyle.reqgularFont,
        ),
        const Gap(5),
        const CustomTextFormField(hinttText: 'Enter your Full name'),
        const Gap(20),
        Text(
          'Email',
          style: AppFontStyle.reqgularFont,
        ),
        const Gap(5),
        const CustomTextFormField(hinttText: 'Enter your email adress'),
        const Gap(20),
        Text(
          'Password',
          style: AppFontStyle.reqgularFont,
        ),
        const Gap(5),
        CustomTextFormField(
          hinttText: 'Enter your password',
          suffixIcon: GestureDetector(
              onTap: () {
                isActive = !isActive;
                setState(() {});
              },
              child: Icon(
                isActive
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              )),
          obsecure: isActive,
        ),
        const Gap(10),
        const CustomPrivacyAndCookieUseText(),
        const Gap(30),
        CustomElevatedButton(
            widget: Text(
          'Create an account',
          style: AppFontStyle.buttonTextStyle,
        )),
        const Gap(10),
        const CustomOrSection(),
        const Gap(10),
        const CustomGoogleButtonSignUp(),
        const Gap(15),
        const CustomFacebookButtonSignUp(),
        const Gap(40),
        const LoginNavigatorSection(),
        const Gap(10),
      ],
    );
  }
}
