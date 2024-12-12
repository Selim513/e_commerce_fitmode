import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint(change.toString());
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint(bloc.toString());
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint(bloc.toString());
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint(bloc.toString());
    debugPrint(error.toString());
    debugPrint(stackTrace.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('$transition');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('$event');
  }
}
