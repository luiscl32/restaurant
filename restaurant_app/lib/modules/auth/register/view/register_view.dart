import 'package:flutter/material.dart';
import 'package:restaurant_app/modules/auth/register/ui/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: RegisterForm(),
    );
  }
}
