import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 30),
          child: Text(
            ' Define\n yourself in\n your unique\n way.',
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.familjenGrotesk().fontFamily),
          ),
        ),
        SizedBox(
            height: 430,
            width: double.infinity,
            child: AssetsHelper.svgPicture('Element1'))
      ],
    ));
  }
}
