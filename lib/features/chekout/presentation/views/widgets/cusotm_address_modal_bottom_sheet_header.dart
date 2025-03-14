import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAddressModalBottomSheetHeader extends StatelessWidget {
  const CustomAddressModalBottomSheetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Address',
          style: AppFontStyle.titleFont20,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.xmark))
      ],
    );
  }
}
