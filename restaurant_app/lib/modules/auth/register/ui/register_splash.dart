import 'package:flutter/material.dart';
import 'package:restaurant_app/router/routes.dart';
import 'package:restaurant_app/widgets/widgets.dart';

class RegisterSplash extends StatelessWidget {
  const RegisterSplash({Key? key}) : super(key: key);
  final String url =
      'https://img.freepik.com/premium-vector/food-search-logo-design-template_145155-1044.jpg';

  @override
  Widget build(BuildContext context) {
    void onNavigate() {
      Navigator.pushNamed(context, Routes.login);
    }

    return Column(
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
        const Text(
            'Felicidades haz creado tu cuenta, presiona continuar para volver al login'),
        const SizedBox(
          height: 16,
        ),
        ContainedButton(
          onPress: onNavigate,
          buttonText: 'continuar',
        ),
      ],
    );
  }
}
