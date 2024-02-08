import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todos_app/bloc/auth/auth_event.dart';
import 'package:my_todos_app/bloc/auth/auth_exceptions.dart';
import 'package:my_todos_app/bloc/auth/auth_state.dart';
import 'package:my_todos_app/models/user.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitialState()) {
    on<AuthLoginEvent>(_login);
    on<AuthLogoutEvent>(_logout);
    on<AuthRegisteringEvent>(_register);
  }

  void _login(AuthLoginEvent event, Emitter<AuthState> emit) {
    final String email = event.email;
    final String password = event.password;

    if (email != 'test@mail.com' && password != '1234') {
      emit(const AuthLogedInSuccessState(
        user: User(
          id: 1,
          firstName: 'Ankit',
          lastName: 'kumar',
          email: 'ankit@fcts.in',
        ),
      ));
    } else {
      emit(AuthLogedInFailedState(
        exception: AuthLoginFailureException(),
      ));
    }
  }

  void _logout(AuthLogoutEvent event, Emitter<AuthState> emit) {
    emit(const AuthInitialState());
  }

  void _register(AuthRegisteringEvent event, Emitter<AuthState> emit) {
    emit(const AuthInitialState());
  }
}
