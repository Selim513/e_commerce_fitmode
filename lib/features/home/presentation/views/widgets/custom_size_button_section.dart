import 'package:flutter/material.dart';

import 'custom_size_elevated_button.dart';

class CustomSizeButton extends StatelessWidget {
  const CustomSizeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CustomSizeElevatedButton(
          name: 'S',
          onPressed: () {},
        ),
        CustomSizeElevatedButton(
          name: 'M',
          onPressed: () {},
        ),
        CustomSizeElevatedButton(
          name: 'L',
          onPressed: () {},
        )
      ],
    );
  }
}
