import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/widget/custom_progress_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        AssetsHelper.svgPicture('Element',),
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
            GoRouter.of(context).pushReplacementNamed(AppRoute.bottomNavBar);

            print(user.uid);
          } else {
            GoRouter.of(context).replaceNamed(AppRoute.getStarted);
          }
        });
      },
    );
  }
}
