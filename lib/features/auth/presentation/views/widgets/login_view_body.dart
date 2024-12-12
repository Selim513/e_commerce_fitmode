import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/Auth_form_section.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_auth_headers.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAuthHeaders(
            title: 'Login to your account',
            subtitle: 'It’s great to see you again.'),
        Gap(30),
        AuthForm(
          authSignUp: false,
        ),
      ],
    );
  }
}
