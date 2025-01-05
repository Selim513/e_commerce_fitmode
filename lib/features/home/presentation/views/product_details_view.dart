import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_add_to_cart_section.dart';
import 'widgets/custom_detail_product_image.dart';
import 'widgets/custom_detail_review_section.dart';
import 'widgets/custom_size_button_section.dart';

///--------هنشيل كل دا وهنعملها CustomImageDetails  يبقا ليها لوحدها لحد مانلاقيلها حل

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomPrimariyAppBar(appBarTitle: 'Details'),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CustomProductDetailImage(),
                ),
                Text(
                  'Regular Fit Slogan',
                  style: AppFontStyle.titleFonts30.copyWith(fontSize: 25),
                ),
                const CustomDetailReviewSextion(),
                Text(
                  'The name says it all, the right size slightly snugs the body leaving enough room for comfort in the sleeves and waist.',
                  style: AppFontStyle.greyFont15.copyWith(fontSize: 17),
                ),
                Text(
                  'Choose Size',
                  style: AppFontStyle.titleFonts30.copyWith(fontSize: 23),
                ),
                const CustomSizeButton(),
                const CustomDivider(),
                const CustomAddToCartSection(),
              ],
            ),
          )),
    );
  }
}
