import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_text_field.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/cusotm_address_modal_bottom_sheet_header.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_address_indicator.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/default_address_check_box.dart';
import 'package:flutter/material.dart';

class CustomAddAddressModalBottomSheetBody extends StatefulWidget {
  const CustomAddAddressModalBottomSheetBody({
    super.key,
  });

  @override
  State<CustomAddAddressModalBottomSheetBody> createState() =>
      _CustomAddAddressModalBottomSheetBodyState();
}

class _CustomAddAddressModalBottomSheetBodyState
    extends State<CustomAddAddressModalBottomSheetBody> {
  TextEditingController selectedAddress = TextEditingController();
  final List<String> addressOptions = [
    "Home",
    "Work",
    "Office",
    "School",
    "University",
    "Friend's House",
    "Family House",
    "Gym",
    "Supermarket",
    "Restaurant",
    "Mall",
    "Hospital",
    "Pharmacy",
    "Park",
    "Hotel",
    "Mosque/Church",
    "Train Station",
    "Bus Station",
    "Airport",
    "Other"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: CustomAddressIndicator()),
            const CustomAddressModalBottomSheetHeader(),
            const CustomDivider(),
            Text(
              'Address NickName',
              style: AppFontStyle.reqgularFont,
            ),
            CustomTextFormField(
              readOnly: true,
              controller: selectedAddress,
              hintText: 'Choose one',
              suffixIcon: DropdownButton<String>(
                underline: const SizedBox(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                icon: AssetsHelper.icons(name: 'arrow_down'),
                items: addressOptions.map((place) {
                  return DropdownMenuItem(
                    value: place,
                    child: Text(place),
                  );
                }).toList(),
                onChanged: (value) {
                  selectedAddress.text = value!;
                  setState(() {});
                },
              ),
            ),
            Text(
              'Full Addres',
              style: AppFontStyle.reqgularFont,
            ),
            const CustomTextFormField(hintText: 'Enter Your Full Address...'),
            const DefaultAddressCheckBox(),
            CustomElevatedButton(
                widget: Text(
              'Add',
              style: AppFontStyle.reqgularFont.copyWith(color: Colors.white),
            ))
          ],
        ),
      ),
    );
  }
}
