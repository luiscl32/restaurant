import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/bloc/cubits/login/login_cubit.dart';
import 'package:restaurant_app/modules/auth/login/ui/login_form.dart';
import 'package:restaurant_app/modules/auth/login/ui/login_splash.dart';

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
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              switch (state.runtimeType) {
                case LoginInitial:
                  return LoginForm();
                case LoginSuccess:
                  return LoginSplash();
                //* todo case error
                default:
                  return Container();
              }
            },
          )),
    );
  }
}
