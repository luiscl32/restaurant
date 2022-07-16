import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> onLoginUser(String username, String password) async {
    try {
      final currentState = state;

      if (currentState is LoginInitial) {
        if (username != 'test123' && password != '1234') {
          emit(LoginError());
        } else {
          emit(LoginSuccess());
        }
      }
    } catch (e) {
      emit(LoginError());
    }
  }
}
