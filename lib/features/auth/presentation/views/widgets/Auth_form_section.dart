import 'package:e_commerce_fitmode/constant.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/core/utils/validate_helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/cusom_forget_password_section.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_facebook_sign_up_button.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_google_sign_up_button.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_or_section.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_privacy_cookie_use_text.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/login_navigator_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({
    super.key,
    required this.authSignUp,
  });
  final bool authSignUp;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  bool isPasswordActive = false;
  var formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool check = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.authSignUp
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full Name',
                          style: AppFontStyle.reqgularFont,
                        ),
                        const Gap(5),
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
                          controller: nameController,
                          hinttText: 'Enter your Full name',
                          dynamicSuffixIcon: true,
                        ),
                      ],
                    )
                  : const SizedBox(),
              const Gap(10),
              Text(
                'Email',
                style: AppFontStyle.reqgularFont,
              ),
              const Gap(5),
              CustomTextFormField(
                
                fieldType: typeFieldEmail,
                dynamicSuffixIcon: true,
                validator: (value) {
                  checkEmailValidator(value);
                  return null;
                },
                hinttText: 'Enter your email adress',
                controller: emailController,
              ),
              const Gap(10),
              Text(
                'Password',
                style: AppFontStyle.reqgularFont,
              ),
              const Gap(5),
              CustomTextFormField(
                fieldType: typeFieldPassword,
                dynamicSuffixIcon: true,
                validator: (value) {
                  checkPasswordValidator(value);
                  return null;
                },
                hinttText: 'Enter your password',
                controller: passwordController,
                suffixIcon: GestureDetector(
                    onTap: () {
                      isPasswordActive = !isPasswordActive;
                      setState(() {});
                    },
                    child: Icon(
                      isPasswordActive
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    )),
                obsecure: isPasswordActive,
              ),
            ],
          ),
        ),
        const Gap(10),
        widget.authSignUp
            ? const CustomPrivacyAndCookieUseText()
            : const CustomForgetPasswordSection(),
        const Gap(30),
        CustomElevatedButton(
            onPress: () {
              if (formKey.currentState!.validate()) {
                print('Validaaaatee');
                widget.authSignUp
                    ? BlocProvider.of<AuthCubit>(context).createAccount(
                        emailController.text,
                        passwordController.text,
                      )
                    : BlocProvider.of<AuthCubit>(context).sigininAccount(
                        email: emailController.text,
                        password: passwordController.text);
              } else {
                print('Errror not validate');
              }
            },
            widget: Text(
              widget.authSignUp ? 'Create an account' : 'Login',
              style: AppFontStyle.buttonTextStyle,
            )),
        const Gap(10),
        const CustomDivider(),
        const Gap(10),
        CustomGoogleRegistrationButton(
          registrationType: widget.authSignUp ? 'Sign Up' : 'Login',
          onPress: () {},
        ),
        const Gap(15),
        CustomFacebookRegistrationButton(
          registrationType: widget.authSignUp ? 'Sign Up' : 'Login',
          onPress: () {},
        ),
        Gap(height * 0.13),
        LoginNavigatorSection(
          onPress: () {
            if (widget.authSignUp) {
              GoRouter.of(context).goNamed(AppRoute.authLoginView);
            } else {
              GoRouter.of(context).goNamed(AppRoute.authCreateAccount);
            }
          },
          checkName: widget.authSignUp ? 'Already' : 'do\'nt',
          registrationType: widget.authSignUp ? 'Login' : 'Join',
        ),
        const Gap(10),
      ],
    );
  }
}
