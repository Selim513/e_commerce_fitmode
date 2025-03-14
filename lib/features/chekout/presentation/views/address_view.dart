import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/add_address_modal_bottom_sheet_body.dart';

class AddressView extends StatefulWidget {
  const AddressView({super.key});

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  String selectedAddress = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomPrimariyAppBar(appBarTitle: 'Address'),
      body: Padding(
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
            Flexible(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greycolor),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: ListTile(
                        leading: AssetsHelper.icons(name: 'Location'),
                        title: Text(
                          'Home',
                          style: AppFontStyle.titleFont20,
                        ),
                        subtitle: Text(
                          '925 S Chugach St #APT 10, Alas...',
                          style: AppFontStyle.greyFont15,
                        ),
                        trailing: Radio(
                          value: 'Home',
                          groupValue: selectedAddress,
                          onChanged: (value) {
                            selectedAddress == value;
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomElevatedButton(
                  color: Colors.white,
                  onPress: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: const CustomAddAddressModalBottomSheetBody(),
                      ),
                    );
                  },
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      const Icon(Icons.add),
                      Text(
                        'Add New Address',
                        style: AppFontStyle.reqgularFont,
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
