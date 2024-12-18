import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.readOnly,
    this.onTap,
  });
  final bool readOnly;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      onTap: onTap,
      decoration: InputDecoration(
          hintText: 'Search for clothes...',
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: Icon(
            CupertinoIcons.mic,
            color: AppColors.greycolor,
          ),
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: AppColors.greycolor,
          ),
          border: customOutLineBorders(circular: 5),
          enabledBorder: customOutLineBorders(circular: 5),
          focusedBorder: customOutLineBorders(circular: 5)),
    );
  }
}
