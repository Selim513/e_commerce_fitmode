import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/media_query.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_payment_method_container.dart';
import 'package:flutter/material.dart';

import '../../../data/model/payment_method_model.dart';
import 'custom_card_section.dart';

class CustomPaymentMethodSection extends StatefulWidget {
  const CustomPaymentMethodSection({super.key, this.onSelect});
  final Function(int)? onSelect;
  @override
  State<CustomPaymentMethodSection> createState() =>
      _CustomPaymentMethodSectionState();
}

class _CustomPaymentMethodSectionState
    extends State<CustomPaymentMethodSection> {
  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Method',
          style: AppFontStyle.titleFont20,
        ),
        SizedBox(
          height: CustomMediaQuery.mediaQueryHeight(context, num: 0.05),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: paymetnMethod.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                selectedIndex = index;
                setState(() {});
                if (widget.onSelect != null) {
                  widget.onSelect!(index);
                }
              },
              child: CustomPaymentMethodContainer(
                detail: paymetnMethod[index],
                isSelcted: selectedIndex == index,
              ),
            ),
          ),
        ),
        selectedIndex == 0 ? const CustomAddCard() : const SizedBox(),
      ],
    );
  }
}
