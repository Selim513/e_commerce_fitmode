import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/navigator_services.dart';
import 'package:e_commerce_fitmode/core/utils/size_config.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_bottom_nav_bar.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/get_started_view.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/widget/custom_progress_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _onBoardinnextPage();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        AssetsHelper.svgPicture(
          'Element',
        ),
        Center(
          child: AssetsHelper.image('logo'),
        ),
        const CustomCircularProgressIndiCator()
      ]),
    );
  }

  Future<void> _onBoardinnextPage() async {
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) {
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
          if (user != null) {
            // GoRouter.of(context).pushReplacementNamed(AppRoute.bottomNavBar);
            AppNavigatorServices.pushReplacement(context,
                screen: const BottomNavBarView());
          } else {
            // GoRouter.of(context).replaceNamed(AppRoute.getStarted);
            AppNavigatorServices.pushReplacement(context,
                screen: const GetStartedView());
          }
        });
      },
    );
  }
}
