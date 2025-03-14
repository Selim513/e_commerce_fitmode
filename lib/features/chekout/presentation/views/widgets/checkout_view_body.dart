import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_divider.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/checkout_order_details_model/checkout_order_details.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_delivery_section.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_order_summary_section.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_payment_method_section.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_paypal_method_checkout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckOutViewBody extends StatefulWidget {
  const CheckOutViewBody({
    super.key,
    required this.checkoutDetails,
  });
  final CheckOutOrderDetails checkoutDetails;

  @override
  State<CheckOutViewBody> createState() => _CheckOutViewBodyState();
}

class _CheckOutViewBodyState extends State<CheckOutViewBody> {
  int selectedPaymentIndex = 0;
  @override
  Widget build(BuildContext context) {
    CheckOutOrderDetails checkoutDetails = widget.checkoutDetails;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            const CustomDivider(),
            const CustomDeliverySection(),
            const CustomDivider(),
            CustomPaymentMethodSection(
              onSelect: (int index) {
                setState(() {
                  selectedPaymentIndex = index;
                });
              },
            ),
            const CustomDivider(),
            CustomOrderSummary(
              checkoutDetails: widget.checkoutDetails,
            ),
            const Gap(30),
            CustomElevatedButton(
              widget: Text(
                'Place Order',
                style: AppFontStyle.buttonTextStyle,
              ),
              onPress: () {
                if (selectedPaymentIndex == 2) {
                  payPalMehodCheckout(context, checkoutDetails);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
