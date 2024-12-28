import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_start_rate.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomRateCard extends StatelessWidget {
  const CustomRateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomStarRate(
            size: 25,
          ),
          Text(
            'The item is very good, my son likes it very much and plays every day.',
            style: AppFontStyle.greyFont15,
          ),
          const Gap(5),
          Row(
            children: [
              Text(
                'Ahmed Selim',
                style: AppFontStyle.reqgularFont.copyWith(fontSize: 15),
              ),
              Text(
                ' • 1 week ago',
                style: AppFontStyle.greyFont15,
              )
            ],
          ),
          const CustomDivider(),
        ],
      ),
    );
  }
}
