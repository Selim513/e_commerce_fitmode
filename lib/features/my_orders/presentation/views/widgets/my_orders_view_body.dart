import 'package:e_commerce_fitmode/core/widgets/custom_product_container.dart';
import 'package:flutter/material.dart';

import 'custom_my_orders_headers.dart';

class MyOrdersViewBody extends StatelessWidget {
  const MyOrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        spacing: 14,
        children: [
          const CustomMyOrdersHeaders(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const CustomProductConainer(),
            ),
          )
        ],
      ),
    );
  }
}
