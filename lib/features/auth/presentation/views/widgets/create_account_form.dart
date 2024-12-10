import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/core/utils/text_field_helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_facebook_sign_up_button.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_google_sign_up_button.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_or_section.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_privacy_cookie_use_text.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/login_navigator_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreateAccountForm extends StatefulWidget {
  const CreateAccountForm({
    super.key,
  });

  @override
  State<CreateAccountForm> createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  bool isActive = true;
  var fomrKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationSuccessState) {
          print('Success===========${state.successMessage}');
          context.go(AppRoute.onBoarding);
        } else if (state is AuthenticationFailureState) {
          print('========================= ${state.errorMessage}');
        } else {
          print('========Loading========');
        }
      },
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
            key: fomrKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Name',
                  style: AppFontStyle.reqgularFont,
                ),
                const Gap(5),
                CustomTextFormField(
                  fieldType: 'Name',
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
                  controller: nameController,
                  hinttText: 'Enter your Full name',
                  dynamicSuffixIcon: true,
                ),
                const Gap(10),
                Text(
                  'Email',
                  style: AppFontStyle.reqgularFont,
                ),
                const Gap(5),
                CustomTextFormField(
                  fieldType: 'Email',
                  dynamicSuffixIcon: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter an email address';
                    } else if (!Validate.emailValidate(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                  hinttText: 'Enter your email adress',
                  controller: emailController,
                ),
                const Gap(10),
                Text(
                  'Email',
                  style: AppFontStyle.reqgularFont,
                ),
                const Gap(5),
                CustomTextFormField(
                  fieldType: 'Password',
                  dynamicSuffixIcon: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is required';
                    } else if (value.length <= 7) {
                      return 'Password must be bigger than 7 letters and numbers';
                    }
                    return null;
                  },
                  hinttText: 'Enter your password',
                  controller: passwordController,
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
              ],
            ),
          ),
          const Gap(10),
          const CustomPrivacyAndCookieUseText(),
          const Gap(30),
          CustomElevatedButton(
              onPress: () {
                if (fomrKey.currentState!.validate()) {
                  print('Validaaaatee');
                  BlocProvider.of<AuthCubit>(context).createAccount(
                    emailController.text,
                    passwordController.text,
                  );
                } else {
                  print('Errror not validate');
                }
              },
              widget: Text(
                'Create an account',
                style: AppFontStyle.buttonTextStyle,
              )),
          const Gap(10),
          const CustomDivider(),
          const Gap(10),
          const CustomGoogleButtonSignUp(),
          const Gap(15),
          const CustomFacebookButtonSignUp(),
          const Gap(10),
          const LoginNavigatorSection(),
          const Gap(10),
        ],
      ),
    );
  }
}
