import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_search_result_listview_item.dart';

class CustomSearchResultListView extends StatelessWidget {
  const CustomSearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const CustomSearchResultListViewItem();
      },
    ));
  }
}
