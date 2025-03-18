import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:e_commerce_fitmode/core/utils/navigator_services.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/auth_form_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    var createAccountGlobalKey = GlobalKey<FormState>();

    return Scaffold(
        body: BlocConsumer<AuthCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is CreateAccountSuccessState) {
          customScaffoldMessenger(context,
              successMessge: state.successMessage, isSuccess: true);
          AppNavigatorServices.pushReplacement(context,
              screen: const LoginView());
          // GoRouter.of(context).replaceNamed(AppRoute.authLoginView);
        } else if (state is CreateAccountFailureState) {
          debugPrint('Account has been created =========${state.errorMessage}');
          customScaffoldMessenger(context,
              successMessge: state.errorMessage, isSuccess: false);
        }
      },
      builder: (context, state) {
        return AuthForm(
          globlaKey: createAccountGlobalKey,
          authSignUp: true,
          title: 'Create an account',
          subtitle: ' Let\'s create your account',
        );
      },
    ));
  }
}
