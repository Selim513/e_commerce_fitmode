import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_primary_appbar.dart';
import 'widgets/custom_notification_listview.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomPrimariyAppBar(
          appBarTitle: 'Notifications',
        ),
        body: CustomNotificationDataCenter()
        //  CustomNoDatataWidget(
        //   iconName: 'Bell-duotone',
        //   title: 'You haven’t gotten\n any notifications yet!',
        //   subTitle: 'We’ll alert you when something\n cool happens.s',
        // ),
        );
  }
}

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
