import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/widget/custom_get_started_button.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/widget/custom_title_text.dart';
import 'package:flutter/material.dart';

class GetStartedBody extends StatelessWidget {
  const GetStartedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 20),
        child: Column(
          children: [
            Flexible(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/person.png',
                        ),
                        fit: BoxFit.fill)),
                child: const Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft, child: CustomTitleText()),
                    // AssetsHelper.svgPicture('Element1'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomGetStartedButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
