import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginNavigatorSection extends StatelessWidget {
  const LoginNavigatorSection({
    super.key,
    this.onPress,
    required this.registrationType, required this.checkName,
  });
  final void Function()? onPress;
  final String registrationType;
  final String checkName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${checkName} have account?',
          style: AppFontStyle.greyFont15,
        ),
        GestureDetector(
          onTap: () {
            context.goNamed(AppRoute.authLoginView);
          },
          child: Text(
            registrationType,
            style: AppFontStyle.reqgularFont,
          ),
        )
      ],
    );
  }
}
