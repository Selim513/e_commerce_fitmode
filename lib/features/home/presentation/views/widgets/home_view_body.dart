import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_cubit.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/categories_button_section.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_home_search_section.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/products_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<ProductsCubit>(context).getAllProduct();
    // BlocProvider.of<ProductsCubit>(context).getByCategories();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            CustomHomeAppbar(),
            CustomSearchSection(),
            Gap(15),
            CategoriesButtonSection(),
            Gap(15),
            ProductsGridVew(),
          ],
        ),
      ),
    );
  }
}
