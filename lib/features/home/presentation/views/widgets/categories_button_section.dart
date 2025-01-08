import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesButtonSection extends StatelessWidget {
  const CategoriesButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: ButtonsTabBar(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: Colors.black,
          unselectedBackgroundColor: Colors.white,
          unselectedBorderColor: AppColors.greycolor,
          radius: 10,
          borderWidth: 0.5,
          labelStyle: AppFontStyle.reqgularFont.copyWith(color: Colors.white),
          unselectedLabelStyle: AppFontStyle.reqgularFont,
          onTap: (p0) {
            print(p0);
            if (p0 == 0) {
              context.read<ProductsCubit>().getAllProduct();
              // context
              //     .read<ProductsCubit>()
              //     .getByCategories(category: 'electronics');
            } else {
              final categories = [
                'men\'s clothing',
                'women\'s clothing',
                'electronics',
                'jewelery'
              ];

              context
                  .read<ProductsCubit>()
                  .getByCategories(category: categories[p0 - 1]);
            }
          },
          tabs: const [
            Tab(
              text: 'All',
            ),
            Tab(
              text: 'men\'s clothing',
            ),
            Tab(
              text: 'women\'s clothing',
            ),
            Tab(
              text: 'electronics',
            ),
            Tab(
              text: 'jewelery',
            ),
          ]),
    );
  }
}
