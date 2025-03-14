import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/checkout_order_details_model/checkout_order_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/helper.dart';
import 'custom_order_details.dart';

class CustomOrderSummary extends StatelessWidget {
  const CustomOrderSummary({
    super.key,
    required this.checkoutDetails,
  });
  final CheckOutOrderDetails checkoutDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Summary',
          style: AppFontStyle.titleFont20,
        ),
        CustomOrderDetail(
            subtotal: checkoutDetails.subtotal, vat: checkoutDetails.vat, shipping: checkoutDetails.shipping, total: checkoutDetails.total),
        const Gap(10),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    CupertinoIcons.tag,
                    color: AppColors.greycolor,
                  ),
                  hintText: 'Enter Promo code',
                  hintStyle: AppFontStyle.greyFont15,
                  focusedBorder: customOutLineBorders(
                      circular: 10, color: AppColors.greycolor),
                  enabledBorder: customOutLineBorders(
                      circular: 10, color: AppColors.greycolor),
                  border: customOutLineBorders(
                      circular: 10, color: AppColors.greycolor),
                ),
              ),
            ),
            const Gap(10),
            Expanded(
                child: CustomElevatedButton(
              widget: Text(
                'Add',
                style: AppFontStyle.buttonTextStyle,
              ),
              onPress: () {},
            )),
          ],
        ),
      ],
    );
  }
}
