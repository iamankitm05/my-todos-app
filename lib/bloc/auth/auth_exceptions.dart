abstract class AuthException implements Exception {
  const AuthException();
}

class AuthLoginFailureException implements AuthException {}

class AuthLogoutFailureException implements AuthException {}

class AuthRegistrationFailureException implements AuthException {}
