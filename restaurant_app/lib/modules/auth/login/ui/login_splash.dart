import 'package:flutter/material.dart';
import 'package:restaurant_app/router/routes.dart';
import 'package:restaurant_app/widgets/widgets.dart';

class LoginSplash extends StatelessWidget {
  const LoginSplash({Key? key}) : super(key: key);
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
        Center(
          child: Text(
            'Bienvenido',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
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
