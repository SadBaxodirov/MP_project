import 'package:flutter/material.dart';

import '../../router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Login Page Placeholder'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRouter.register),
              child: const Text('Go to Register'),
            ),
          ],
        ),
      ),
    );
  }
}
