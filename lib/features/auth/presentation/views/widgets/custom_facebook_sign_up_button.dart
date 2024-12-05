import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomFacebookButtonSignUp extends StatelessWidget {
  const CustomFacebookButtonSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        color: const Color(0xff1877F2),
        onPress: () {},
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AssetsHelper.icons(name: 'facebook'),
            const Gap(5),
            Text(
              'Sig Up  with Facebook',
              style: AppFontStyle.reqgularFont.copyWith(color: Colors.white),
            )
          ],
        ));
  }
}
