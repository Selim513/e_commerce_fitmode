import 'package:flutter/material.dart';

import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/utils/assets_helper.dart';

class CustomMyCartProductDetails extends StatelessWidget {
  const CustomMyCartProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Product Title ',
                  style: AppFontStyle.reqgularFont,
                ),
                const Spacer(),
                AssetsHelper.icons(name: 'Trash'),
              ],
            ),
            Text(
              'Size L',
              style: AppFontStyle.greyFont15,
            ),
            Row(
              children: [
                Text(
                  '\$ 1,190',
                  style: AppFontStyle.reqgularFont,
                ),
                const Spacer(),
                Row(
                  spacing: 5,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                    const Text('1'),
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
