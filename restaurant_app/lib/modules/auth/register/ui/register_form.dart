import 'package:flutter/material.dart';
import 'package:restaurant_app/router/routes.dart';

import 'package:restaurant_app/widgets/widgets.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String url =
        'https://img.freepik.com/premium-vector/food-search-logo-design-template_145155-1044.jpg';

    Map<String, String> formValues = {
      'email': '',
    };

    String? validateUser(String? value) {
      if (value!.isEmpty) return 'ingrese un usuario';
    }

    void onNavigate() {
      Navigator.pushNamed(context, Routes.register);
    }

    return SingleChildScrollView(
      child: Form(
          child: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Image(
              image: NetworkImage(url),
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomInputField(
            inputProperty: 'email',
            inputValue: formValues,
            validator: validateUser,
            labelText: 'ingresa tu usuario',
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 16,
          ),
          ContainedButton(
            onPress: onNavigate,
            buttonText: 'continuar',
          ),
        ],
      )),
    );
  }
}
