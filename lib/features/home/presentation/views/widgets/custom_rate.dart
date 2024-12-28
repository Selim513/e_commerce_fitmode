import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_start_rate.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class CustomRateProgressListView extends StatelessWidget {
  const CustomRateProgressListView({
    super.key,
    required this.starNumber,
  });

  final List<double> starNumber;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: starNumber.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            spacing: 10,
            children: [
              CustomStarRate(
                size: 25,
                initialRate: starNumber.reversed.toList()[index],
              ),
              Expanded(
                child: LinearProgressBar(
                  maxSteps: 5,
                  progressType: LinearProgressBar.progressTypeLinear,
                  minHeight: 6,
                  // Use Linear progress
                  currentStep: starNumber.reversed.toList()[index].toInt(),
                  progressColor: Colors.black,
                  backgroundColor: AppColors.greycolor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
