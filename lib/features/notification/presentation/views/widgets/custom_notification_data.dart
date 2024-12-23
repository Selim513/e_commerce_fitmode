
import 'package:e_commerce_fitmode/features/notification/presentation/views/widgets/custom_notification_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_divider.dart';

class CustomNotificationDataCenter extends StatelessWidget {
  const CustomNotificationDataCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 10,
      children: [CustomDivider(), CustomNotificationListView()],
    );
  }
}
