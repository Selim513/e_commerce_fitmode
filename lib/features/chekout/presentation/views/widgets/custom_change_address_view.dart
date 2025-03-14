import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomChangeAdressView extends StatefulWidget {
  const CustomChangeAdressView({super.key});

  @override
  State<CustomChangeAdressView> createState() => _CustomChangeAdressViewState();
}

class _CustomChangeAdressViewState extends State<CustomChangeAdressView> {
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
