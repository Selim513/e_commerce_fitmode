import 'package:e_commerce_fitmode/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

import 'custom_recent_search_result_item.dart';

class CustomRecentSearchResultListView extends StatelessWidget {
  const CustomRecentSearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomRecentSearchTitleSection(),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => const CustomRecentSearchResultItem(),
                  childCount: 5))
        ],
      ),
    );
  }
}
