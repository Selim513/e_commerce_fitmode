import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/my_cart/presentation/views/cubit/cart_cubit.dart';
import 'package:e_commerce_fitmode/features/my_cart/presentation/views/cubit/cart_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomAddToCartSection extends StatelessWidget {
  const CustomAddToCartSection({
    super.key,
    required this.product,
  });

  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          spacing: 10,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: AppFontStyle.greyFont15,
                ),
                Text(
                  '\$ ${product.price}',
                  style: AppFontStyle.reqgularFont.copyWith(fontSize: 25),
                ),
              ],
            ),
            BlocConsumer<CartCubit, CartState>(
              listener: (context, state) {
                if (state is CartSuccessState) {
                  customScaffoldMessenger(context,
                      successMessge: state.succMessage, isSuccess: true);
                  GoRouter.of(context).pushNamed(AppRoute.cart);
                } else if (state is CartFailureState) {
                  customScaffoldMessenger(context,
                      successMessge: state.errMessage, isSuccess: false);
                }
              },
              builder: (context, state) => Expanded(
                child: CustomElevatedButton(
                    onPress: () async {
                      context.read<CartCubit>().addToCart(product);
                    
                    },
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 5,
                      children: [
                        const Icon(
                          CupertinoIcons.bag_fill,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          'Add to Cart',
                          style: AppFontStyle.buttonTextStyle
                              .copyWith(fontSize: 20),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
