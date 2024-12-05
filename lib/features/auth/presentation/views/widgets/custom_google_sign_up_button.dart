import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomGoogleButtonSignUp extends StatelessWidget {
  const CustomGoogleButtonSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        color: Colors.white,
        borderSide: BorderSide(color: AppColors.greycolor),
        onPress: () {},
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AssetsHelper.icons(name: 'google'),
            const Gap(5),
            Text(
              'Sig Up  with Google',
              style: AppFontStyle.reqgularFont,
            )
          ],
        ));
  }
}
