import 'package:flutter/material.dart';
import 'package:restaurant_app/router/screens.dart';

class Routes {
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';

  Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (BuildContext context) => const LoginPage(),
      register: (BuildContext context) => const RegisterPage(),
      dashboard: (BuildContext context) => const RestaurantPage(),
    };
  }
}
