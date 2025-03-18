import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/widgets/custom_address_view_body.dart';
import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedAddress = "Home";
    return Scaffold(
      appBar: const CustomPrimariyAppBar(appBarTitle: 'Address'),
      body: CustomAddressViewBody(selectedAddress: selectedAddress),
    );
  }
}
