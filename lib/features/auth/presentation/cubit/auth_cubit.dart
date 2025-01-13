import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthenticationState> {
  AuthCubit() : super(AuthInitialState());
  //Create Account method
  createAccount(emailAddress, password) async {
    emit(CreateAccountLoadingState());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      emit(CreateAccountSuccessState(
          successMessage: 'Account has been created.'));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(CreateAccountFailureState(
            errorMessage: 'The Password you enter is too weak'));
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        emit(CreateAccountFailureState(
            errorMessage: 'The account already exist.'));
        print('The account already exists for that email.');
      }
    } catch (e) {
      emit(CreateAccountFailureState(
          errorMessage: 'There is an error occured ===>${e.toString()}'));
      print(e);
    }
  }

// Login method
  sigininAccount({password, emailAddress}) async {
    emit(SigininAccountLoadingState());
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      emit(SigininAccountSuccessState(successMessage: 'Welcome Back.'));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        emit(SigininAccountFailureState(
            errorMessage: 'No user four for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SigininAccountFailureState(
            errorMessage: 'The password is incorrect'));
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print('/------------->${e.toString()}');
      emit(SigininAccountFailureState(
          errorMessage: 'There is an error occured: ${e.toString()}'));
    }
  }

  // Reset Password method
  sendResetPasswordLink({email}) async {
    try {
      // await Supabase.instance.client.auth.resetPasswordForEmail(email,
      //     redirectTo: 'com.example.e_commerce_fitmode://reset-password');
      emit(ResetPasswordLinkSuccessState(
          successMessage: 'Password reset link sent to your email'));
    } catch (e) {
      print(e);
      emit(ResetPasswordLinkFailureState(errorMessage: e.toString()));
    }
  }
}
