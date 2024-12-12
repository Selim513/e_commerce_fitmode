import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthCubit extends Cubit<AuthenticationState> {
  AuthCubit() : super(AuthInitialState());

  createAccount(email, password) async {
    emit(CreateAccountLoadingState());
    try {
      final AuthResponse res = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
      );
      final Session? session = res.session;
      final User? user = res.user;
      emit(CreateAccountSuccessState(
          successMessage: 'Account has been created'));
    } catch (e) {
      emit(CreateAccountFailureState(errorMessage: e.toString()));
      print(e);
    }
  }

  sigininAccount({password, email}) async {
    emit(SigininAccountLoadingState());
    try {
      final AuthResponse res =
          await Supabase.instance.client.auth.signInWithPassword(
        password: password,
        email: email,
      );
      final Session? session = res.session;
      final User? user = res.user;
      emit(SigininAccountSuccessState(successMessage: 'Welcome Back'));
    } catch (e) {
      emit(SigininAccountFailureState(errorMessage: e.toString()));
    }
  }
}
