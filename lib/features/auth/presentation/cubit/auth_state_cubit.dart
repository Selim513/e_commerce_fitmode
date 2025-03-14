abstract class AuthenticationState {}

class AuthInitialState extends AuthenticationState {}
class LoadingState extends AuthenticationState {}


class CreateAccountSuccessState extends AuthenticationState {
  final String successMessage;

  CreateAccountSuccessState({required this.successMessage});
}

class CreateAccountFailureState extends AuthenticationState {
  final String errorMessage;

  CreateAccountFailureState({required this.errorMessage});
}


//-----------------------Signin State------------------------------

class SigininAccountSuccessState extends AuthenticationState {
  final String successMessage;

  SigininAccountSuccessState({required this.successMessage});
}

class SigininAccountFailureState extends AuthenticationState {
  final String errorMessage;

  SigininAccountFailureState({required this.errorMessage});
}


//-------------------------ResetPasswordLink----------------

class ResetPasswordSuccessState extends AuthInitialState {
  final String successMessage;

  ResetPasswordSuccessState({required this.successMessage});
}

class ResetPasswordFailureState extends AuthInitialState {
  final String errorMessage;

  ResetPasswordFailureState({required this.errorMessage});
}


