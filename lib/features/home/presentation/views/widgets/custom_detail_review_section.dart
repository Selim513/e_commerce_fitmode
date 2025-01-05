
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_fonts.dart';

class CustomDetailReviewSextion extends StatelessWidget {
  const CustomDetailReviewSextion({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Text(
          '4.0/5',
          style: AppFontStyle.underLineText.copyWith(fontSize: 15),
        ),
        Text(
          '(45 reviews)',
          style: AppFontStyle.greyFont15,
        ),
      ],
    );
  }
}
