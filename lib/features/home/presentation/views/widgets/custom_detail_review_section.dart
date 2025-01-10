import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_fonts.dart';

class CustomDetailReviewSection extends StatelessWidget {
  const CustomDetailReviewSection({
    super.key,
    required this.rate,
  });
  final Rating? rate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).pushNamed(AppRoute.reviews, extra: rate),
      child: Row(
        spacing: 5,
        children: [
          const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Text(
            '${rate?.rate ?? 0.0} /5',
            style: AppFontStyle.underLineText.copyWith(fontSize: 15),
          ),
          Text(
            '(${rate?.count ?? 0} reviews)',
            style: AppFontStyle.greyFont15,
          ),
        ],
      ),
    );
  }
}
