import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_delivery_section.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomPrimariyAppBar(
        appBarTitle: 'Checkout',
        isArrowBack: true,
      ),
      body: CheckOutViewBody(),
    );
  }
}

class CheckOutViewBody extends StatelessWidget {
  const CheckOutViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          const CustomDivider(),
          const CustomDeliverySection(),
          const CustomDivider(),
          Text(
            'Payment Method',
            style: AppFontStyle.titleFont20,
          ),
        ],
      ),
    );
  }
}
