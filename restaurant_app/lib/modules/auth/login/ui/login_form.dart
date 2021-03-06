import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/bloc/cubits/login/login_cubit.dart';
import 'package:restaurant_app/router/routes.dart';
import 'package:restaurant_app/theme/app_theme.dart';
import 'package:restaurant_app/widgets/widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String url =
        'https://img.freepik.com/premium-vector/food-search-logo-design-template_145155-1044.jpg';

    Map<String, String> formValues = {
      'username': '',
      'password': '',
    };

    String? validateUser(String? value) {
      if (value!.isEmpty) return 'ingrese un usuario';
    }

    String? validatePassword(String? value) {
      if (value!.isEmpty) return 'ingrese su contraseña';
    }

    void onNavigate() {
      context
          .read<LoginCubit>()
          .onLoginUser(formValues['username']!, formValues['password']!);
    }

    void onRegister() {
      Navigator.pushNamed(context, Routes.register);
    }

    return BlocBuilder<LoginCubit, LoginState>(
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
                labelText: 'usuario',
                prefixIcon: Icons.person,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomInputField(
                inputProperty: 'password',
                inputValue: formValues,
                validator: validatePassword,
                labelText: 'contraseña',
                obscureText: true,
                prefixIcon: Icons.lock,
              ),
              const SizedBox(
                height: 16,
              ),
              ContainedButton(
                onPress: onNavigate,
                buttonText: 'continuar',
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: onRegister,
                  child: const Text('Registro'),
                ),
              )
            ],
          )),
        );
      },
    );
  }
}
