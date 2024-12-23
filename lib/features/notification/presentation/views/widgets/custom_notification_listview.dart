import 'package:flutter/material.dart';

import 'custom_notification_card.dart';

class CustomNotificationListView extends StatelessWidget {
  const CustomNotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const CustomNotificationCard();
      },
    ));
  }
}
