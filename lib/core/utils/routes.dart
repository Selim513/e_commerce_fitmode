import 'package:e_commerce_fitmode/features/auth/presentation/views/create_account_view.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/get_started_view.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static String onBoarding = '/';
  static String getStarted = '/getStarted';
  static String authCreateAccount = '/authCreateAccount';
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
              builder: (BuildContext context, GoRouterState state) {
                return const GetStartedView();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: authCreateAccount,
                  builder: (BuildContext context, GoRouterState state) {
                    return const CreateAccountView();
                  },
                )
              ]),
        ],
      ),
    ],
  );
}
