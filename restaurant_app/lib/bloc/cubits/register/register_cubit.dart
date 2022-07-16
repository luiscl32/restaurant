import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> onRegisterUser(String username, String password) async {
    try {
      final currentState = state;

      if (currentState is RegisterInitial) {
        if (username.isEmpty && password.isEmpty) {
          emit(RegisterError());
        } else {
          emit(RegisterSuccess());
        }
      }
    } catch (e) {
      emit(RegisterError());
    }
  }
}
