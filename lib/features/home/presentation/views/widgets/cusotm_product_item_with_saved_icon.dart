import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_positioned_saved_heart.dart';
import 'package:e_commerce_fitmode/features/saved_item/presentation/cubit/saved_item_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_product_image.dart';

class CustomProductItemWithSavedIcon extends StatelessWidget {
  const CustomProductItemWithSavedIcon({
    super.key,
    required this.image,
    required this.products,
  });
  final String image;
  final ProductsModel products;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomProductImage(
              image: image,
            ),
          ],
        ),
        BlocProvider(
          create: (context) => SavedItemCubit(),
          child: CustomPositionedSavedHeart(
            product: products,
          ),
        ),
      ],
    );
  }
}
