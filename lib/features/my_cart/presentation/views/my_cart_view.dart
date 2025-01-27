import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/cart/cart_cubit.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/cart/cart_state.dart';
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
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          if (state is CartFechItemSuccess) {
            print('Items fetched successfully.');
          } else if (state is CartFechItemFailure) {
            print('Error: ${state.errMessage}');
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: const CustomPrimariyAppBar(appBarTitle: 'My Cart'),
            body: SafeArea(
              child: state is LoadingState
                  ? const Center(child: CircularProgressIndicator())
                  : state is CartFechItemSuccess
                      ? CustomMyCartViewBody(
                          product: state.productItem,
                        )
                      : const CustomNoDatataWidget(
                          iconName: 'Cart-duotone',
                          subTitle:
                              'When you add products,\n they’ll appear here.',
                          title: 'Your Cart Is Empty!',
                        ),
            ),
          );
        },
      ),
    );
  }
}
