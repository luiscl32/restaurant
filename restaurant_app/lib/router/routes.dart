import 'package:flutter/material.dart';
import 'package:restaurant_app/modules/auth/login/view/login_page.dart';
import 'package:restaurant_app/modules/auth/register/view/register_page.dart';

class Routes {
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';

  Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (BuildContext context) => const LoginPage(),
      register: (BuildContext context) => const RegisterPage(),
    };
  }
}
