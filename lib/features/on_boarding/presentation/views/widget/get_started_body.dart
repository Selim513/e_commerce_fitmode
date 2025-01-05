import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/widget/custom_get_started_button.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/widget/custom_person_image.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/widget/custom_title_text.dart';
import 'package:flutter/material.dart';

class GetStartedBody extends StatelessWidget {
  const GetStartedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Stack(
              children: [
                AssetsHelper.svgPicture('Element1'),
                const CustomTitleText(),
                const CustomPersonImage(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CustomGetStartedButton(),
            ),
          ],
        ),
      ),
    );
  }
}
