import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/chekout/presentation/views/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/utils/assets_helper.dart';

class CustomMyCartProductDetails extends StatelessWidget {
  const CustomMyCartProductDetails({
    super.key,
    required this.product,
  });
  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CartCubit>();

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  product.title.split(' ').first,
                  style: AppFontStyle.reqgularFont,
                  maxLines: 1,
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () async {
                      try {
                        cubit.deleteCartItem(product.id).then(
                          (value) {
                            cubit.fetchCartItems();
                          },
                        );
                        print('Deleteeeeeeeeed');
                      } catch (e) {
                        print('========${e.toString()}');
                        // TODO
                      }
                    },
                    child: AssetsHelper.icons(name: 'Trash')),
              ],
            ),
            Text(
              'Size L',
              style: AppFontStyle.greyFont15,
            ),
            Row(
              children: [
                Text(
                  '\$ ${product.price}',
                  style: AppFontStyle.reqgularFont,
                ),
                const Spacer(),
                Row(
                  spacing: 5,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        product.quantity++;
                        cubit
                            .updateProductQuantity(product.id, product.quantity)
                            .then(
                          (value) {
                            cubit
                                .fetchCartItems(); // إعادة جلب البيانات لتحديث الواجهة
                          },
                        );
                      },
                    ),
                    Text("${product.quantity}"),
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        if (product.quantity > 1) {
                          product.quantity--;
                          cubit
                              .updateProductQuantity(
                                  product.id, product.quantity)
                              .then(
                            (value) {
                              cubit
                                  .fetchCartItems(); // إعادة جلب البيانات لتحديث الواجهة
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
