import 'package:e_commerce_fitmode/features/auth/presentation/views/create_account_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
        colorScheme: const ColorScheme.light(
          primary: Colors.black, // اللون الأساسي
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const CreateAccountView(),
    );
  }
}
