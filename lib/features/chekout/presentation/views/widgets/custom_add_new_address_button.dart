
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/add_address_modal_bottom_sheet_body.dart';
import 'package:flutter/material.dart';

class CustomAddNewAddressSectionButton extends StatelessWidget {
  const CustomAddNewAddressSectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
