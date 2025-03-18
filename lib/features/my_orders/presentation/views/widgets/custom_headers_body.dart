import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomMyOrdersHeadersBody extends StatefulWidget {
  const CustomMyOrdersHeadersBody({
    super.key,
  });

  @override
  State<CustomMyOrdersHeadersBody> createState() =>
      _CustomMyOrdersHeadersBodyState();
}

class _CustomMyOrdersHeadersBodyState extends State<CustomMyOrdersHeadersBody> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            isSelected = 0;
            setState(() {});
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: isSelected == 0 ? Colors.white : AppColors.greycolor,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Ongoing',
              style: AppFontStyle.reqgularFont,
            ),
          ),
        )),
        Expanded(
            child: GestureDetector(
          onTap: () {
            isSelected = 1;
            setState(() {});
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: isSelected == 1 ? Colors.white : AppColors.greycolor,
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Text(
              'Completed',
              style: AppFontStyle.greyFont15,
            ),
          ),
        )),
      ],
    );
  }
}
