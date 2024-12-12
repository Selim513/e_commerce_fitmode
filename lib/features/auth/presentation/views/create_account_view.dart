import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/create_account_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<AuthCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is CreateAccountSuccessState) {
          print('Success===========${state.successMessage}');
          // context.goNamed(AppRoute.home);
        } else if (state is CreateAccountFailureState) {
          print('========================= ${state.errorMessage}');
        }
      },
      builder: (context, state) {
        return const CreateAccountBody();
      },
    ));
  }
}
