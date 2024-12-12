import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/Auth_form_section.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_auth_headers.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateAccountBody extends StatelessWidget {
  const CreateAccountBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAuthHeaders(
              title: 'Create an account',
              subtitle: ' Let\'s create your account',
            ),
            Gap(25),
            AuthForm(
              authSignUp: true,
            ),
          ],
        ),
      ),
    ));
  }
}
