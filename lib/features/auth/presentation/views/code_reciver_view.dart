import 'package:e_commerce_fitmode/features/auth/presentation/views/widgets/custom_auth_headers.dart';
import 'package:flutter/material.dart';

class CodeVerificationView extends StatelessWidget {
  const CodeVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          CustomAuthHeaders(
              title: 'Enter 4 Digital Code',
              subtitle:
                  'Enter 4 digit code that your receive on your email (fisher45@example.com).')
        ],
      ),
    );
  }
}
