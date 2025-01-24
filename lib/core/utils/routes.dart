import 'package:e_commerce_fitmode/core/utils/size_config.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_bottom_nav_bar.dart';
import 'package:e_commerce_fitmode/features/account/presentation/views/account_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/create_account_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/views/password_reset_view.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/rating.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/home_view.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/product_details_view.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/product_reviews_view.dart';
import 'package:e_commerce_fitmode/features/notification/presentation/views/notification_view.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/get_started_view.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/splash_view_screen_view.dart';
import 'package:e_commerce_fitmode/features/saved_item/presentation/views/saved_item_view.dart';
import 'package:e_commerce_fitmode/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const String splashScreen = '/';
  static const String getStarted = '/getStarted';
  static const String auth = '/auth';
  static const String authCreateAccount = '$auth/create-account';
  static const String authLoginView = '$auth/login';
  static const String resetPassword = '$auth/reset-password';
  static const String home = '/home';
  static const String productDetails = '$home/productDetails';
  static const String bottomNavBar = '/navBar';
  static const String notification = '/notification';
  static const String search = '/search';
  static const String savedItem = '/savedItem';
  static const String account = '/account';
  static const String reviews = '/reviews';

  static GoRouter router =
      GoRouter(initialLocation: splashScreen, routes: <RouteBase>[
    GoRoute(
        path: splashScreen,
        name: splashScreen,
        builder: (context, state) {
          SizeConfig.init(context);
          return const SplashScreen();
        }),
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
        path: home,
        name: home,
        builder: (context, state) => const HomeView(),
        routes: <RouteBase>[
          GoRoute(
              path: productDetails,
              name: productDetails,
              builder: (context, state) {
                final products = state.extra as ProductsModel;
                return ProductsDetails(
                  products: products,
                );
              },
              routes: <RouteBase>[
                GoRoute(
                  path: reviews,
                  name: reviews,
                  builder: (context, state) {
                    final reviews = state.extra as Rating;
                    return  ProductReviewsView(rate: reviews,);
                  },
                )
              ]),
        ]),
    GoRoute(
      path: bottomNavBar,
      name: bottomNavBar,
      builder: (context, state) => const CustomBottomNavBar(),
    ),
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
    ),
    GoRoute(
      path: account,
      name: account,
      builder: (context, state) => const AccountView(),
    )
  ]);
}
