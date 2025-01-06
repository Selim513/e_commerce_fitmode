import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: 'Search for clothes...',
      hintStyle: WidgetStatePropertyAll(AppFontStyle.greyFont15),
      autoFocus: true,
      leading: Icon(
        CupertinoIcons.search,
        color: AppColors.greycolor,
      ),
      trailing: [
        Icon(
          CupertinoIcons.mic,
          color: AppColors.greycolor,
        )
      ],
      shape: WidgetStatePropertyAll(
        ContinuousRectangleBorder(
          side: BorderSide(color: AppColors.greycolor),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      elevation: const WidgetStatePropertyAll(0),
    );
  }
}
