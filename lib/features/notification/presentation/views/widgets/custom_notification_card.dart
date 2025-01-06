import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import 'custom_notification_listtile.dart';

class CustomNotificationCard extends StatelessWidget {
  const CustomNotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Today',
            style: AppFontStyle.titleFonts30.copyWith(fontSize: 20),
          ),
        ),
        const CustomNotificationListile(),
        const CustomDivider()
      ],
    );
  }
}
