import 'package:flutter/material.dart';

import '../../router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Register Page Placeholder'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRouter.login),
              child: const Text('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
