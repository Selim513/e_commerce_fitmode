import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_cubit.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_state_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'custom_products_item.dart';

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
          return Expanded(
              child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 15,
                maxCrossAxisExtent: 200,
                childAspectRatio: 1),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () =>
                      GoRouter.of(context).pushNamed(AppRoute.productDetails),
                  child: CutomProductsItem(
                    products: products[index],
                  ));
            },
          ));
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
