import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_cubit.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'product_grid_view_success_state.dart';

class ProductsGridVew extends StatelessWidget {
  const ProductsGridVew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductsSuccessState) {
          var products = state.products;
          return ProductGridViewSuccessState(products: products);
        } else if (state is ProductsFailureState) {
          print(state.errMessage);
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
