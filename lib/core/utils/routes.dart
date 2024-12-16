import 'package:e_commerce_fitmode/features/auth/presentation/views/create_account_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/password_reset_view.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/home_view.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/get_started_view.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static String onBoarding = '/';
  static String getStarted = '/getStarted';
  static String authCreateAccount = '/authCreateAccount';
  static String home = '/home';
  static String authLoginView = '/loginView';
  static String resetPassword = '/resetPassword';

  static GoRouter router = GoRouter(
    errorBuilder: (context, state) {
      return const Scaffold(
        body: Center(
          child: Text('Error Can\'t find the page'),
        ),
      );
    },
    routes: <RouteBase>[
      GoRoute(
        path: onBoarding,
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingView();
        },
        routes: <RouteBase>[
          GoRoute(
              path: getStarted,
              name: getStarted,
              builder: (BuildContext context, GoRouterState state) {
                return const GetStartedView();
              },
              routes: <RouteBase>[
                GoRoute(
                    path: authCreateAccount,
                    name: authCreateAccount,
                    builder: (BuildContext context, GoRouterState state) {
                      return const CreateAccountView();
                    },
                    routes: <RouteBase>[
                      GoRoute(
                          path: home,
                          name: home,
                          builder: (context, state) {
                            return const HomeView();
                          },
                          routes: <RouteBase>[
                            GoRoute(
                                path: authLoginView,
                                name: authLoginView,
                                builder: (context, state) => const LoginView(),
                                routes: <RouteBase>[
                                  GoRoute(
                                    path: resetPassword,
                                    name: resetPassword,
                                    builder: (context, state) =>
                                        const PasswordResetView(),
                                  )
                                ])
                          ])
                    ]),
              ]),
        ],
      ),
    ],
  );
}
