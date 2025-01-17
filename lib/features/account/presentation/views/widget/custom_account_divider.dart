import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAccountDivider extends StatelessWidget {
  const CustomAccountDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider( 
      thickness: 8,
      color: Colors.grey,
    );
  }
}
