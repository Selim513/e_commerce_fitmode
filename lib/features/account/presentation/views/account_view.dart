import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:flutter/material.dart';

import 'widget/custom_account_body.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomPrimariyAppBar(appBarTitle: 'Account'),
      body: SafeArea(
        child: CustomAccountBody(),
      ),
    );
  }
}
