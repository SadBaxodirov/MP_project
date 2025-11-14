import 'package:flutter/material.dart';

import '../../router.dart';
import '../../services/auth_local.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _signOut(BuildContext context) async {
    await AuthLocal.instance.signOut();
    if (context.mounted) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRouter.login,
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, AppRouter.profile),
          child: const Text('Go to Profile'),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _signOut(context),
        label: const Text('Sign out'),
        icon: const Icon(Icons.logout),
      ),
    );
  }
}
