import 'package:flutter/material.dart';
import 'package:restaurant_app/modules/auth/login/ui/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
          child: const LoginForm()),
    );
  }
}
