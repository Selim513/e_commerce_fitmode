import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';

class SavedItemView extends StatelessWidget {
  const SavedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomPrimariyAppBar(appBarTitle: 'Saved Item'),
        body: Center(
          child: Text("Saved Item"),
        )
        // CustomNoDatataWidget(
        //     iconName: 'Heart-duotone',
        //     title: 'No saved items',
        //     subTitle:
        //         'You don’t have any saved items.\n Go to home and add some.'),
        );
  }
}
