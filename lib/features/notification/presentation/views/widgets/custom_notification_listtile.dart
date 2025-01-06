import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

class CustomNotificationListile extends StatelessWidget {
  const CustomNotificationListile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AssetsHelper.icons(name: 'discount'),
      title: Text(
        '30% Special Discount!',
        style: AppFontStyle.reqgularFont.copyWith(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        'Special promotion only valid today.',
        style: AppFontStyle.greyFont15.copyWith(fontSize: 13),
      ),
    );
  }
}
