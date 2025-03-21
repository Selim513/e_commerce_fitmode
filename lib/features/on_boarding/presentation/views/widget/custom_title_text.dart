import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Text(
        ' Define \n yourself in\n your unique\n way.',
        style: AppFontStyle.titleFonts35
            .copyWith(fontFamily: GoogleFonts.roboto().fontFamily),
      ),
    );
  }
}
