import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_no_notification_body.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

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
            Expanded(
                child: CustomSearchTextField(
              readOnly: false,
            )),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomNoDatataWidget(
                      iconName: 'Search-duotone',
                      title: 'No Results Found!',
                      subTitle:
                          'Try a similar word or something\n more general.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
