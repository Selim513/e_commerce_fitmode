import 'package:e_commerce_fitmode/features/my_cart/presentation/views/widgets/custom_mycart_product_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_checkout_section.dart';

class CustomMyCartViewBody extends StatelessWidget {
  const CustomMyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 5,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) =>
                  const CustomMyCartProductContainer(),
            ),
          ),
          const CustomCheckOutSection(),
          const Gap(10),
        ],
      ),
    );
  }
}
