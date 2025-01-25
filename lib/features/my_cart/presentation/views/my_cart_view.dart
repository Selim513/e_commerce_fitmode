import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_mycart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomPrimariyAppBar(appBarTitle: 'My Cart'),
        body: SafeArea(child: CustomMyCartViewBody())
        //      CustomNoDatataWidget(
        //   iconName: 'Cart-duotone',
        //   subTitle: 'When you add products,\n they’ll appear here.',
        //   title: 'Your Cart Is Empty!',
        // )
        );
  }
}
