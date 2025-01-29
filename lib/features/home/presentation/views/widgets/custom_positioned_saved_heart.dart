
import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/saved_item/presentation/cubit/saved_item_cubit.dart';
import 'package:e_commerce_fitmode/features/saved_item/presentation/cubit/saved_item_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPositionedSavedHeart extends StatelessWidget {
  const CustomPositionedSavedHeart({super.key, required this.product});
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SavedItemCubit, SavedItemState>(
      listener: (context, state) {
        if (state is SavedItemSuccess) {
          customScaffoldMessenger(context,
              successMessge: 'Item has been saved', isSuccess: true);
        }
      },
      builder: (context, state) {
        return Positioned(
          right: 15,
          top: 10,
          child: GestureDetector(
            onTap: () {
              final savedCubit = context.read<SavedItemCubit>();
              savedCubit.checkIfSaved(product).then(
                (value) {
                  savedCubit.saveItem(product);
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: context.read<SavedItemCubit>().isSelected
                  ? const Icon(CupertinoIcons.heart_fill, color: Colors.red)
                  : const Icon(CupertinoIcons.heart),
            ),
          ),
        );
      },
    );
  }
}
