import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/cusotm_search_bar.dart';
import 'widgets/custom_recent_search_result_listview.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomPrimariyAppBar(appBarTitle: 'Search'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomSearchBar(),
            Gap(5),
            // CustomNoSerachData(),
            // CustomSearchResultListView()
            // CustomRecentSearchTitleSection(),
            Gap(10),
            CustomRecentSearchResultListView()
          ],
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
