import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomFacebookRegistrationButton extends StatelessWidget {
  const CustomFacebookRegistrationButton({
    super.key,
    this.onPress,
    required this.registrationType,
  });
  final void Function()? onPress;
  final String registrationType;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        color: const Color(0xff1877F2),
        onPress: onPress,
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AssetsHelper.icons(name: 'facebook'),
            const Gap(5),
            Text(
              '${registrationType} with Facebook',
              style: AppFontStyle.reqgularFont.copyWith(color: Colors.white),
            )
          ],
        ));
  }
}
