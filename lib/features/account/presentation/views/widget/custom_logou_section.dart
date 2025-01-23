import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CustomLogoutSection extends StatelessWidget {
  const CustomLogoutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final auth = FirebaseAuth.instance;
        await context.read<AuthCubit>().signout();
        GoRouter.of(context).pushReplacement(AppRoute.authLoginView);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AssetsHelper.icons(name: 'Logout'),
            const Gap(10),
            Text(
              'Logout',
              style: AppFontStyle.reqgularFont
                  .copyWith(fontSize: 20, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
