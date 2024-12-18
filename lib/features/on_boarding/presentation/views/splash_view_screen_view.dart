import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/widget/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
        AssetsHelper.svgPicture('Element'),
        Center(
          child: AssetsHelper.image('logo'),
        ),
        const CustomCircularProgressIndiCator()
      ]),
    );
  }

  Future<void> _onBoardinnextPage() async {
    final seesion = Supabase.instance.client.auth.currentSession;
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) {
        if (seesion != null) {
          GoRouter.of(context).pushReplacementNamed(AppRoute.bottomNavBar);
        } else {
          GoRouter.of(context).replaceNamed(AppRoute.getStarted);
        }
      },
    );
  }
}
