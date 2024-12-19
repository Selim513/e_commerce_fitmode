import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/cusotm_search_bar.dart';
import 'widgets/cusotm_search_result_listview.dart';

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
            CustomSearchResultListView()
          ],
        ),
      ),
    );
  }
}
