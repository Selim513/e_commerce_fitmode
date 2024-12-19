import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomOrDivider extends StatelessWidget {
  const CustomOrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            'Or',
            style: AppFontStyle.greyFont15,
          ),
        ),
        const Expanded(
          child: Divider(
            color: Colors.grey,
            endIndent: 1,
            height: 1,
            indent: 1,
          ),
        )
      ],
    );
  }
}
