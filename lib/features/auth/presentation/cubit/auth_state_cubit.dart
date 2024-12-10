abstract class AuthenticationState {}

class AuthenticationnitialState extends AuthenticationState {}

class AuthenticationSuccessState extends AuthenticationState {
  final String successMessage;

  AuthenticationSuccessState({required this.successMessage});
}

class AuthenticationFailureState extends AuthenticationState {
  final String errorMessage;

  AuthenticationFailureState({required this.errorMessage});
}

class AuthenticationoadingState extends AuthenticationState {}
