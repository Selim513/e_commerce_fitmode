import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'custom_home_search_textfield.dart';

class CustomSearchSection extends StatelessWidget {
  const CustomSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomSearchTextField(
            onTap: () => GoRouter.of(context).goNamed(AppRoute.search),
            readOnly: true,
          ),
        ),
        const Gap(5),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.black,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {},
            icon: AssetsHelper.icons(name: 'filtter'))
      ],
    );
  }
}
