import 'package:e_commerce_fitmode/core/utils/services_locator.dart';
import 'package:e_commerce_fitmode/features/home/data/repo/home_repo_impl.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ProductsCubit(getIt.get<HomeRepoImpl>()),
        child: const HomeViewBody(),
      ),
    );
  }
}
