part of 'login_cubit.dart';

abstract class LoginState extends Equatable {}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginSuccess extends LoginState {
  final bool success = true;
  @override
  List<Object> get props => [success];
}

class LoginError extends LoginState {
  final bool error = true;
  @override
  List<Object> get props => [error];
}
