import 'package:flutter/material.dart';
import 'package:restaurant_app/modules/auth/register/view/register_view.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterView(),
    );
  }
}
