import 'package:e_commerce_fitmode/core/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.router,
    );
  }
}
