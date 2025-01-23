import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthenticationState> {
  AuthCubit() : super(AuthInitialState());
  //Create Account method
  TextEditingController createAccountnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordActive = false;
  bool check = false;
  final GlobalKey<FormState> formKeySignUp = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyResetPassword = GlobalKey<FormState>();

  createAccount() async {
    emit(CreateAccountLoadingState());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      final user = credential.user;
      if (user != null) {
        await FirebaseFirestore.instance
            .collection('Client')
            .doc(user.uid)
            .set({
          "name": createAccountnameController.text,
          "email": emailController.text,
          "created_at": DateTime.now(),
        });

        emit(CreateAccountSuccessState(
          successMessage: 'Account has been created.',
        ));
      } else {
        emit(CreateAccountFailureState(
          errorMessage: 'Failed to retrieve user after account creation.',
        ));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(CreateAccountFailureState(
          errorMessage: 'The Password you enter is too weak',
        ));
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        emit(CreateAccountFailureState(
          errorMessage: 'The account already exists.',
        ));
        print('The account already exists for that email.');
      }
    } catch (e) {
      emit(CreateAccountFailureState(
        errorMessage: 'An unexpected error occurred. Please try again later.',
      ));
      print(e);
    }
  }

// Login method
  sigininAccount() async {
    emit(SigininAccountLoadingState());
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
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
  sendResetPasswordLink() async {
    try {
      emit(ResetPasswordLoadingState());
      final credential = await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailController.text,
      );
      emit(ResetPasswordSuccessState(successMessage: 'Password email sent .'));
    } on FirebaseAuthException catch (e) {
      emit(ResetPasswordFailureState(
          errorMessage: 'There is an error ${e.message}'));
    }
  }

  signout() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signOut().then(
      (value) {
        emailController.clear();
        passwordController.clear();
      },
    );
  }
}
