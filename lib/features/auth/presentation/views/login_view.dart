import 'package:e_commerce_fitmode/core/utils/helper.dart';
import 'package:e_commerce_fitmode/core/utils/navigator_services.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_bottom_nav_bar.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/auth_form_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var loginGlobalKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: BlocConsumer<AuthCubit, AuthenticationState>(
            listener: (context, state) {
              if (state is SigininAccountFailureState) {
                debugPrint('Failure============${state.errorMessage}');
                customScaffoldMessenger(context,
                    successMessge: 'The Password or the Email is wrong',
                    isSuccess: false);
              } else if (state is SigininAccountSuccessState) {
                debugPrint('Success============${state.successMessage}');
                customScaffoldMessenger(context,
                    successMessge: state.successMessage, isSuccess: true);
                // context.goNamed(AppRoute.home);
                // GoRouter.of(context)
                //     .pushReplacementNamed(AppRoute.bottomNavBar);
                AppNavigatorServices.pushRemoveUntil(context,
                    screen: const BottomNavBarView());
              }
            },
            builder: (context, state) {
              return AuthForm(
                globlaKey: loginGlobalKey,
                authSignUp: false,
                title: 'Login to your account',
                subtitle: 'It’s great to see you again.',
              );
            },
          ),
        ),
      ),
    );
  }
}
