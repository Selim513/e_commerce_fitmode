import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/my_cart/presentation/views/cubit/cart_cubit.dart';
import 'package:e_commerce_fitmode/features/my_cart/presentation/views/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../notification/presentation/views/widgets/custom_no_notification_body.dart';
import 'widgets/custom_mycart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit()..fetchCartItems(),
      child: Scaffold(
        appBar: const CustomPrimariyAppBar(appBarTitle: 'My Cart'),
        body: SafeArea(
          child: BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              if (state is CartFechItemLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is CartFechItemSuccess &&
                  state.productItem.isNotEmpty) {
                return CustomMyCartViewBody(
                  product: state.productItem,
                );
              } else if (state is CartFechItemFailure) {
                return Center(
                  child: Text(state.errMessage),
                );
              } else {
                return const CustomNoDatataWidget(
                  iconName: 'Cart-duotone',
                  subTitle: 'When you add products,\n they’ll appear here.',
                  title: 'Your Cart Is Empty!',
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
