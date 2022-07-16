import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/bloc/cubits/register/register_cubit.dart';

import 'package:restaurant_app/widgets/widgets.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String url =
        'https://img.freepik.com/premium-vector/food-search-logo-design-template_145155-1044.jpg';

    Map<String, String> formValues = {'username': '', 'password': ''};

    String? validateUser(String? value) {
      if (value!.isEmpty) return 'ingrese un usuario';
    }

    void onNavigate() {
      context
          .read<RegisterCubit>()
          .onRegisterUser(formValues['username']!, formValues['password']!);
    }

    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
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
                inputProperty: 'username',
                inputValue: formValues,
                validator: validateUser,
                labelText: 'ingresa tu usuario',
                prefixIcon: Icons.person,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomInputField(
                inputProperty: 'password',
                inputValue: formValues,
                validator: validateUser,
                labelText: 'ingresa tu contraseña',
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
      },
    );
  }
}
