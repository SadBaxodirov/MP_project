import 'package:flutter/material.dart';

import 'screens/auth/login_page.dart';
import 'screens/auth/register_page.dart';
import 'screens/home/home_page.dart';
import 'screens/profile/profile_page.dart';

class AppRouter {
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const profile = '/profile';

  static Map<String, WidgetBuilder> routes = {
    login: (_) => const LoginPage(),
    register: (_) => const RegisterPage(),
    home: (_) => const HomePage(),
    profile: (_) => const ProfilePage(),
  };
}
