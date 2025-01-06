import 'package:flutter/material.dart';

import '../../../../notification/presentation/views/widgets/custom_no_notification_body.dart';

class CustomNoSerachData extends StatelessWidget {
  const CustomNoSerachData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomNoDatataWidget(
              iconName: 'Search-duotone',
              title: 'No Results Found!',
              subTitle: 'Try a similar word or something\n more general.'),
        ],
      ),
    );
  }
}
