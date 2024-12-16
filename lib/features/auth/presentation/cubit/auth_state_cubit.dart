abstract class AuthenticationState {}

class AuthInitialState extends AuthenticationState {}

class CreateAccountSuccessState extends AuthenticationState {
  final String successMessage;

  CreateAccountSuccessState({required this.successMessage});
}

class CreateAccountFailureState extends AuthenticationState {
  final String errorMessage;

  CreateAccountFailureState({required this.errorMessage});
}

class CreateAccountLoadingState extends AuthenticationState {}

//-----------------------Signin State------------------------------

class SigininAccountSuccessState extends AuthenticationState {
  final String successMessage;

  SigininAccountSuccessState({required this.successMessage});
}

class SigininAccountFailureState extends AuthenticationState {
  final String errorMessage;

  SigininAccountFailureState({required this.errorMessage});
}

class SigininAccountLoadingState extends AuthenticationState {}
//-------------------------ResetPasswordLink----------------

class ResetPasswordLinkSuccessState extends AuthInitialState {
  final String successMessage;

  ResetPasswordLinkSuccessState({required this.successMessage});
}

class ResetPasswordLinkFailureState extends AuthInitialState {
  final String errorMessage;

  ResetPasswordLinkFailureState({required this.errorMessage});
}
