
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomPrivacyAndCookieUseText extends StatelessWidget {
  const CustomPrivacyAndCookieUseText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: 'By signin up you agree to our ',
          style: AppFontStyle.reqgularFont.copyWith(fontSize: 14)),
      TextSpan(
          text: 'Terms, Privacy Policy, ',
          style: AppFontStyle.reqgularFont
              .copyWith(fontWeight: FontWeight.w600, fontSize: 14)),
      TextSpan(
          text: 'and ',
          style: AppFontStyle.reqgularFont.copyWith(fontSize: 14)),
      TextSpan(
          text: 'Cookie Use',
          style: AppFontStyle.reqgularFont
              .copyWith(fontWeight: FontWeight.w600, fontSize: 14)),
    ]));
  }
}
