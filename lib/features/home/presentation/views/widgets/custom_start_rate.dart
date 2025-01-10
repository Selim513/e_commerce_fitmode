import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomStarRate extends StatelessWidget {
  const CustomStarRate({
    super.key,
    required this.size,
    this.initialRate,
    this.rate,
  });
  final double size;
  final double? initialRate;
  final double? rate;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      ignoreGestures: true,
      initialRating: (initialRate?.floorToDouble()) ??
          4.0, // Displaying the current rating
      minRating: 1,
      itemCount: 5,
      itemSize: size, // Size of each star
      unratedColor: AppColors.greycolor,
      itemBuilder: (context, index) {
        return const Icon(
          Icons.star,
          color: Colors.amber,
        );
      },
      onRatingUpdate: (value) {
        print('Rating done');
      },
    );
  }
}
