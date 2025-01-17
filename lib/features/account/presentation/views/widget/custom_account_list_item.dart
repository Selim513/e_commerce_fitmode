// import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// import '../../../../../core/utils/app_colors.dart';
// import 'custom_row_account_list_item.dart';

// class CustomContainerAccountListItem extends StatelessWidget {
//   const CustomContainerAccountListItem({
//     super.key,
//     required this.title,
//     required this.icon,
//     required this.isFirst,
//   });
//   final String title;
//   final String icon;
//   final bool isFirst;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
//       child: Column(
//         children: [
//           isFirst
//               ? const SizedBox()
//               : Padding(
//                   padding: const EdgeInsets.only(bottom: 15),
//                   child: CustomDivider(
//                     color: AppColors.greycolor,
//                   ),
//                 ),
//           CustomRowAccountListItem(icon: icon, title: title),
//           const Gap(20),
//           isFirst
//               ? CustomDivider(
//                   color: AppColors.greycolor,
//                 )
//               : const SizedBox(),
//         ],
//       ),
//     );
//   }
// }
import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/features/account/presentation/views/widget/custom_row_account_list_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomContainerAccountListItem extends StatelessWidget {
  const CustomContainerAccountListItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isFirst,
    required this.isLast,
  });

  final String title;
  final String icon;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
      child: Column(
        children: [
          if (!isFirst)
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: CustomDivider(
                color: AppColors.greycolor,
              ),
            ),
          CustomRowAccountListItem(icon: icon, title: title),
          if (!isLast) const Gap(20),
          if (!isLast)
            CustomDivider(
              color: AppColors.greycolor,
            ),
        ],
      ),
    );
  }
}
