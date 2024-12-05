
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class LoginNavigatorSection extends StatelessWidget {
  const LoginNavigatorSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have account?',
          style: AppFontStyle.greyFont15,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Login',
            style: AppFontStyle.reqgularFont,
          ),
        )
      ],
    );
  }
}
