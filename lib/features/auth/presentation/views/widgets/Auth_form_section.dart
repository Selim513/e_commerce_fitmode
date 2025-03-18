import 'package:e_commerce_fitmode/constant.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:e_commerce_fitmode/core/utils/navigator_services.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_auth_text_form_field.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/create_account_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/cusom_forget_password_section.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_facebook_sign_up_button.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_google_sign_up_button.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_or_section.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_privacy_cookie_use_text.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/login_navigator_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'custom_auth_headers.dart';
import 'custom_name_form_field_widget.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    super.key,
    required this.authSignUp,
    required this.title,
    required this.subtitle,
    required this.globlaKey,
  });
  final bool authSignUp;
  final GlobalKey<FormState> globlaKey;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    var authCubit = context.read<AuthCubit>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          slivers: [
            SliverToBoxAdapter(
                child: CustomAuthHeaders(title: title, subtitle: subtitle)),
            const SliverToBoxAdapter(child: Gap(30)),
            SliverList(
              delegate: SliverChildListDelegate([
                Form(
                  key: globlaKey,
                  child: Column(
                    spacing: 15,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      authSignUp
                          ? CustomNameTextFormFieldWidget(authCubit: authCubit)
                          : const SizedBox(),
                      Text(
                        'Email',
                        style: AppFontStyle.reqgularFont,
                      ),
                      CustomAuthTextFormField(
                        fieldType: typeFieldEmail,
                        dynamicSuffixIcon: true,
                        validator: (value) {
                          return checkEmailValidator(value);
                        },
                        hinttText: 'Enter your email adress',
                        controller: authSignUp
                            ? authCubit.createAccountEmailController
                            : authCubit.loginEmailController,
                      ),
                      Text(
                        'Password',
                        style: AppFontStyle.reqgularFont,
                      ),
                      CustomAuthTextFormField(
                        fieldType: typeFieldPassword,
                        dynamicSuffixIcon: true,
                        validator: (value) {
                          return checkPasswordValidator(value);
                        },
                        hinttText: 'Enter your password',
                        controller: authSignUp
                            ? authCubit.createAccountPasswordController
                            : authCubit.loginPasswordController,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              authCubit.isPasswordActive =
                                  !authCubit.isPasswordActive;
                            },
                            child: Icon(
                              authCubit.isPasswordActive
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                            )),
                        obsecure: authCubit.isPasswordActive,
                      ),
                      authSignUp
                          ? const CustomPrivacyAndCookieUseText()
                          : const CustomForgetPasswordSection(),
                      BlocProvider.of<AuthCubit>(context).state is LoadingState
                          ? const Center(child: CircularProgressIndicator())
                          : CustomElevatedButton(
                              onPress: () {
                                if (globlaKey.currentState!.validate()) {
                                  print('Validaaaatee');
                                  authSignUp
                                      ? BlocProvider.of<AuthCubit>(context)
                                          .createAccount()
                                      : BlocProvider.of<AuthCubit>(context)
                                          .sigininAccount();
                                } else {
                                  print('Errror not validate');
                                }
                              },
                              widget: Text(
                                authSignUp ? 'Create an account' : 'Login',
                                style: AppFontStyle.buttonTextStyle,
                              )),
                      const CustomOrDivider(),
                      CustomGoogleRegistrationButton(
                        registrationType: authSignUp ? 'Sign Up' : 'Login',
                        onPress: () {},
                      ),
                      CustomFacebookRegistrationButton(
                        registrationType: authSignUp ? 'Sign Up' : 'Login',
                        onPress: () {},
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            const SliverToBoxAdapter(
              child: Gap(20),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: LoginNavigatorSection(
                  onPress: () {
                    if (authSignUp) {
                      AppNavigatorServices.pushReplacement(context,
                          screen: const LoginView());
                      // GoRouter.of(context).goNamed(AppRoute.authLoginView);
                    } else {
                      AppNavigatorServices.pushReplacement(context,
                          screen: const CreateAccountView());
                      // GoRouter.of(context).goNamed(AppRoute.authCreateAccount);
                    }
                  },
                  checkName: authSignUp ? 'Already' : 'do\'nt',
                  registrationType: authSignUp ? 'Login' : 'Join',
                ),
              ),
            ),
            const SliverToBoxAdapter(child: Gap(10)),
          ],
        ),
      ),
    );
  }
}
