abstract class AuthEvent {
  const AuthEvent();
}

class AuthLoginEvent extends AuthEvent {
  final String email;
  final String password;
  const AuthLoginEvent({
    required this.email,
    required this.password,
  });
}

class AuthLogoutEvent extends AuthEvent {
  const AuthLogoutEvent();
}

class AuthRegisteringEvent extends AuthEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String conformPassword;

  const AuthRegisteringEvent({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.conformPassword,
  });
}
