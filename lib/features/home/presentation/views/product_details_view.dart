import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/cusotm_product_item_with_saved_icon.dart';
import 'package:flutter/material.dart';

///--------هنشيل كل دا وهنعملها CustomImageDetails  يبقا ليها لوحدها لحد مانلاقيلها حل

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomPrimariyAppBar(appBarTitle: 'Details'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: SizedBox(
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: CustomProductItemWithSavedIcon(),
                ),
              ),
            ),
            Expanded(
                child: Column(children: [
              Text(
                'Regular Fit Slogan',
                style: AppFontStyle.titleFonts30.copyWith(fontSize: 22),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
