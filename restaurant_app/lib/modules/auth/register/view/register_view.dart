import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/bloc/cubits/register/register_cubit.dart';
import 'package:restaurant_app/modules/auth/register/ui/register_form.dart';
import 'package:restaurant_app/modules/auth/register/ui/register_splash.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case RegisterInitial:
              return const RegisterForm();
            case RegisterSuccess:
              return const RegisterSplash();
            default:
              return Container();
          }
        },
      ),
    );
  }
}
