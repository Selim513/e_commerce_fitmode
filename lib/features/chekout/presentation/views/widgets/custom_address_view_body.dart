import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_add_new_address_button.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_saved_address_listview.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomAddressViewBody extends StatelessWidget {
  const CustomAddressViewBody({
    super.key,
    required this.selectedAddress,
  });

  final String selectedAddress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomDivider(),
          Text(
            'Saved Address',
            style: AppFontStyle.titleFont20,
          ),
          const Gap(10),
          CustomSavedAddressListView(selectedAddress: selectedAddress),
          const CustomAddNewAddressSectionButton()
        ],
      ),
    );
  }
}
