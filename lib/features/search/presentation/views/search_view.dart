import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/services_locator.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/home/data/repo/home_repo_impl.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_cubit.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/cusotm_search_bar.dart';
import 'widgets/cusotm_search_result_listview.dart';
import 'widgets/custom_no_search_data.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt.get<HomeRepoImpl>()),
      child: Scaffold(
        appBar: const CustomPrimariyAppBar(
          appBarTitle: 'Search',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomSearchBar(),
              const Gap(5),
              BlocBuilder<ProductsCubit, ProductState>(
                  builder: (context, state) {
                if (state is GetBySearch) {
                  print("===========${state.products.length}");
                  return CustomSearchResultListView(product: state.products);
                } else {
                  return const CustomNoSerachData();
                }
              }),
              // CustomRecentSearchTitleSection(),
              const Gap(10),
              // CustomRecentSearchResultListView()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRecentSearchTitleSection extends StatelessWidget {
  const CustomRecentSearchTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recent Searches',
          style: AppFontStyle.titleFonts30.copyWith(fontSize: 20),
        ),
        const Spacer(),
        GestureDetector(
          child: Text(
            'Clear all',
            style: AppFontStyle.underLineText,
          ),
        )
      ],
    );
  }
}
