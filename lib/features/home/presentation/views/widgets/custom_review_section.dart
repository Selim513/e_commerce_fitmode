import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_review_card.dart';
import 'package:flutter/material.dart';

class CustomReviewSection extends StatelessWidget {
  const CustomReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        spacing: 10,
        children: [
          Row(
            children: [
              Text(
                '45 Review',
                style: AppFontStyle.reqgularFont
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                'Most Relevant',
                style: AppFontStyle.greyFont15,
              ),
              Icon(
                Icons.arrow_downward,
                color: AppColors.greycolor,
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const CustomRateCard(),
            ),
          )
        ],
      ),
    );
  }
}
