import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/navigator_services.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_bottom_nav_bar.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomGetStartedButton extends StatelessWidget {
  const CustomGetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPress: () {
        AppNavigatorServices.pushRemoveUntil(context,
            screen: const BottomNavBarView());
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
