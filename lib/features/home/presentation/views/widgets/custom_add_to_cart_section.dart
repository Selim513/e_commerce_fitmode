
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAddToCartSection extends StatelessWidget {
  const CustomAddToCartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        spacing: 10,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: AppFontStyle.greyFont15,
              ),
              Text(
                '\$ Price',
                style: AppFontStyle.reqgularFont.copyWith(fontSize: 25),
              ),
            ],
          ),
          Expanded(
            child: CustomElevatedButton(
                onPress: () {},
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    const Icon(
                      CupertinoIcons.bag_fill,
                      size: 25,
                      color: Colors.white,
                    ),
                    Text(
                      'Add to Cart',
                      style:
                          AppFontStyle.buttonTextStyle.copyWith(fontSize: 20),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
