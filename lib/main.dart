import 'package:e_commerce_fitmode/bloc_observer.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/product_reviews_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://dnywzrldbacignhkwnkh.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRueXd6cmxkYmFjaWduaGt3bmtoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzMxNzM3MDgsImV4cCI6MjA0ODc0OTcwOH0.1Aj5hLyq-kPaAlw8Kyaz9c3HQvOuQgnAgmG6lbNjUU4');
  Bloc.observer = AppObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.aBeeZee().fontFamily,
          colorScheme: const ColorScheme.light(
            primary: Colors.black, // اللون الأساسي
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const ProductReviewsView(),
        // routerConfig: AppRoute.router,
      ),
    );
  }
}
