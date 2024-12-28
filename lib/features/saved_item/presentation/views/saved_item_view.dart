import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/products_gridview.dart';
import 'package:flutter/material.dart';

class SavedItemView extends StatelessWidget {
  const SavedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomPrimariyAppBar(appBarTitle: 'Saved Item'),
        body: ProductsGridVew()
        // CustomNoDatataWidget(
        //     iconName: 'Heart-duotone',
        //     title: 'No saved items',
        //     subTitle:
        //         'You don’t have any saved items.\n Go to home and add some.'),
        );
  }
}
