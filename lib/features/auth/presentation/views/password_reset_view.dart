import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_auth_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class PasswordResetView extends StatelessWidget {
  const PasswordResetView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    var globalKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAuthHeaders(
                  title: 'Forgot Password',
                  subtitle:
                      'Enter your email for the verification process. We will send 4 digits code to your email.'),
              const Gap(50),
              const Text('Email'),
              const Gap(10),
              BlocConsumer<AuthCubit, AuthenticationState>(
                listener: (context, state) {
                  if (state is ResetPasswordSuccessState) {
                    customScaffoldMessenger(context,
                        successMessge: state.successMessage, isSuccess: true);
                    Navigator.pop(context);
                  } else if (state is ResetPasswordFailureState) {
                    customScaffoldMessenger(context,
                        successMessge: state.errorMessage, isSuccess: false);
                  }
                },
                builder: (context, state) {
                  return CustomTextFormField(
                      validator: (value) {
                        checkEmailValidator(value);
                        return null;
                      },
                      controller:
                          context.read<AuthCubit>().loginEmailController,
                      hinttText: 'Email',
                      dynamicSuffixIcon: false,
                      fieldType: 'Email');
                },
              ),
              const Spacer(),
              CustomElevatedButton(
                widget: Text(
                  'Send Code',
                  style: AppFontStyle.buttonTextStyle,
                ),
                onPress: () {
                  if (globalKey.currentState!.validate()) {
                    BlocProvider.of<AuthCubit>(context).sendResetPasswordLink();
                  }
                },
              ),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
