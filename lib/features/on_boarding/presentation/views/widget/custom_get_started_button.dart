import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CustomGetStartedButton extends StatelessWidget {
  const CustomGetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPress: () {
        GoRouter.of(context).pushReplacementNamed(AppRoute.authCreateAccount);
      },
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Get Started',
            style: AppFontStyle.buttonTextStyle,
          ),
          const Gap(5),
          AssetsHelper.icons(name: 'arrow-right'),
        ],
      ),
    );
  }
}
