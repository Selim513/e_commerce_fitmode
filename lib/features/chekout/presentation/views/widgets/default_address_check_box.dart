import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class DefaultAddressCheckBox extends StatefulWidget {
  const DefaultAddressCheckBox({super.key});

  @override
  State<DefaultAddressCheckBox> createState() => _DefaultAddressCheckBoxState();
}

class _DefaultAddressCheckBoxState extends State<DefaultAddressCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          activeColor: Colors.black,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            'Make this as a default address',
            style: AppFontStyle.greyFont15,
          ),
        ),
      ],
    );
  }
}
