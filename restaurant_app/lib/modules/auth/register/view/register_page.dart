import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/bloc/cubits/register/register_cubit.dart';
import 'package:restaurant_app/modules/auth/register/view/register_view.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registro'),
        ),
        body: RegisterView(),
      ),
    );
  }
}
