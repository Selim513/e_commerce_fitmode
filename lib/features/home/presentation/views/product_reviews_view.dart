import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_rate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/custom_review_section.dart';
import 'widgets/custom_start_rate.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<double> starNumber = [1, 2, 3, 4, 5];
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: const CustomPrimariyAppBar(appBarTitle: 'Reviews'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDivider(),
            Row(
              spacing: 10,
              children: [
                Text(
                  '4.0',
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: GoogleFonts.openSans().fontFamily,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomStarRate(
                      size: 27,
                    ),
                    Text(
                      ' 1003 Ratings',
                      style: AppFontStyle.greyFont15,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
                height: height * 0.27,
                child: CustomRateProgressListView(starNumber: starNumber)),
            const CustomDivider(),
            const CustomReviewSection()
          ],
        ),
      ),
    );
  }
}
