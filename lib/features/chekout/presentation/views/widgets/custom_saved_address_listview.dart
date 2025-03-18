import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

class CustomSavedAddressListView extends StatefulWidget {
  const CustomSavedAddressListView({
    super.key,
    required this.selectedAddress,
  });

  final String selectedAddress;

  @override
  State<CustomSavedAddressListView> createState() =>
      _CustomSavedAddressListViewState();
}

class _CustomSavedAddressListViewState
    extends State<CustomSavedAddressListView> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.greycolor),
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
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
                  groupValue: widget.selectedAddress,
                  onChanged: (value) {
                    widget.selectedAddress == index;
                    setState(() {});
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
