import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomForgetPasswordSection extends StatelessWidget {
  const CustomForgetPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Forget your password?'),
        GestureDetector(
            onTap: () {
              GoRouter.of(context).pushNamed(AppRoute.resetPassword);
            },
            child: Text('Resset your password',
                style: AppFontStyle.underLineText)),
      ],
    );
  }
}
