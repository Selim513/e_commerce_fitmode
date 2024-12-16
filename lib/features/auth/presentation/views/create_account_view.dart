import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/create_account_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<AuthCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is CreateAccountSuccessState) {
          print('Success===========${state.successMessage}');
          debugPrint(
              'Account has been created =========${state.successMessage}');
          customScaffoldMessenger(context,
              successMessge: state.successMessage, isSuccess: true);

          GoRouter.of(context).replaceNamed(AppRoute.authLoginView);
        } else if (state is CreateAccountFailureState) {
          debugPrint('Account has been created =========${state.errorMessage}');
          customScaffoldMessenger(context,
              successMessge: state.errorMessage, isSuccess: false);
        }
      },
      builder: (context, state) {
        return const CreateAccountBody();
      },
    ));
  }
}
