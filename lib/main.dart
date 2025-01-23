import 'package:e_commerce_fitmode/bloc_observer.dart';
import 'package:e_commerce_fitmode/core/utils/services_locator.dart';
import 'package:e_commerce_fitmode/features/account/presentation/views/account_view.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  Bloc.observer = AppObserver();
  setup();
  runApp(const MainApp());
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp.router(
        theme: ThemeData(
          fontFamily: GoogleFonts.aBeeZee().fontFamily,
          colorScheme: const ColorScheme.light(
            primary: Colors.black, // اللون الأساسي
          ),
        ),
        debugShowCheckedModeBanner: false,
        // home: const AccountView(),
        routerConfig: AppRoute.router,
      ),
    );
  }
}
