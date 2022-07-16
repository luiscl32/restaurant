part of 'register_cubit.dart';

abstract class RegisterState extends Equatable {}

class RegisterInitial extends RegisterState {
  @override
  List<Object> get props => [];
}

class RegisterLoaded extends RegisterState {
  final bool success = false;
  @override
  List<Object> get props => [success];
}

class RegisterSuccess extends RegisterState {
  final bool success = true;
  @override
  List<Object> get props => [success];
}

class RegisterError extends RegisterState {
  final bool success = false;
  final bool error = true;
  @override
  List<Object> get props => [success];
}
