import 'package:e_commerce_fitmode/features/auth/presentation/views/create_account_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/password_reset_view.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/notification_view.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/saved_item_view.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/search_view.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/get_started_view.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/splash_view_screen_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const String splashScreen = '/';
  static const String getStarted = '/getStarted';
  static const String auth = '/auth';
  static const String authCreateAccount = '$auth/create-account';
  static const String authLoginView = '$auth/login';
  static const String resetPassword = '$auth/reset-password';
  static const String home = '/home';
  static const String bottomNavBar = '/navBar';
  static const String notification = '/notification';
  static const String search = '/search';
  static const String savedItem = '/savedItem';

  static GoRouter router =
      GoRouter(initialLocation: splashScreen, routes: <RouteBase>[
    GoRoute(
      path: splashScreen,
      name: splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: getStarted,
      name: getStarted,
      builder: (context, state) => const GetStartedView(),
    ),
    GoRoute(
      path: auth,
      name: auth,
      builder: (context, state) => const CreateAccountView(),
      routes: <RouteBase>[
        GoRoute(
          path: authCreateAccount,
          name: authCreateAccount,
          builder: (context, state) => const CreateAccountView(),
        ),
        GoRoute(
          path: authLoginView,
          name: authLoginView,
          builder: (context, state) => const LoginView(),
        ),
        GoRoute(
          path: resetPassword,
          name: resetPassword,
          builder: (context, state) => const PasswordResetView(),
        ),
      ],
    ),
    GoRoute(
        path: bottomNavBar,
        name: bottomNavBar,
        builder: (context, state) => const CustomBottomNavBar(),
        routes: <RouteBase>[
          GoRoute(
            path: notification,
            name: notification,
            builder: (context, state) => const NotificationView(),
          ),
          GoRoute(
            path: search,
            name: search,
            builder: (context, state) => const SearchView(),
          ),
          GoRoute(
            path: savedItem,
            name: savedItem,
            builder: (context, state) => const SavedItemView(),
          )
        ])
  ]);
}
