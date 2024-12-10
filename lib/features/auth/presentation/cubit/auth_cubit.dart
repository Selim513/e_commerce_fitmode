import 'package:e_commerce_fitmode/features/auth/presentation/cubit/auth_state_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthCubit extends Cubit<AuthenticationState> {
  AuthCubit() : super(AuthenticationnitialState());

  createAccount(email, password) async {
    emit(AuthenticationoadingState());
    try {
      final AuthResponse res = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
      );
      final Session? session = res.session;
      final User? user = res.user;
      emit(AuthenticationSuccessState(
          successMessage: 'Account has been created'));
    } catch (e) {
      emit(AuthenticationFailureState(errorMessage: e.toString()));
      print(e);
    }
  }
}
