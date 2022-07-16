import 'package:flutter/material.dart';
import 'package:restaurant_app/modules/auth/login/view/login_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginView());
  }
}
