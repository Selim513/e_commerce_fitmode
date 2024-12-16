import 'package:e_commerce_fitmode/core/utils/assets_helper.dart';
import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:e_commerce_fitmode/features/on_boarding/presentation/views/widget/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
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
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) {
        GoRouter.of(context).replaceNamed(AppRoute.getStarted);
      },
    );
  }
}
