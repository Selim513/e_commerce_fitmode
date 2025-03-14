import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/navigator_services.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_change_address_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDeliverySection extends StatelessWidget {
  const CustomDeliverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          children: [
            Text('Delivery Address', style: AppFontStyle.titleFont20),
            const Spacer(),
            TextButton(
              onPressed: () => AppNavigatorServices.push(context,
                  screen: const CustomChangeAdressView()),
              child: Text(
                'Change',
                style: AppFontStyle.underLineText,
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AssetsHelper.icons(name: 'Location'),
            const Gap(5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home',
                  style: AppFontStyle.reqgularFont
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '925 S Chugach St #APT 10, Alaska 99645',
                  style: AppFontStyle.greyFont15,
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
