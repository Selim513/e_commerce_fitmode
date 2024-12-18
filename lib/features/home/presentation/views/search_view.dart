import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_no_notification_body.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final FocusNode foucsNode = FocusNode();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      foucsNode.requestFocus();
    });
  }

  @override
  void dispose() {
    super.dispose();
    foucsNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomPrimariyAppBar(appBarTitle: 'Search'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: CustomSearchTextField(
              focusNode: foucsNode,
              readOnly: false,
            )),
            const Expanded(
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
