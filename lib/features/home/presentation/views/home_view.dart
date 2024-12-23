import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_home_search_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/categories_button_section.dart';
import 'widgets/products_gridview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
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
      ),
    );
  }
}
