import 'package:my_todos_app/models/user.dart';

abstract class AuthState {
  const AuthState();
}

class AuthInitialState extends AuthState {
  const AuthInitialState();
}

class AuthLogedInSuccessState extends AuthState {
  final User user;
  const AuthLogedInSuccessState({required this.user});
}

class AuthLogedInFailedState extends AuthState {
  final Exception exception;
  const AuthLogedInFailedState({required this.exception});
}