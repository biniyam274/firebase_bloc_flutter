import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_learn/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final firebaseAuthenticationRepository = FirebaseAuthRepository();
  await firebaseAuthenticationRepository.user.first;
  BlocOverrides.runZoned(
    () =>
        runApp(App(authenticationRepository: firebaseAuthenticationRepository)),
    blocObserver: AppBlocObserver(),
  );
}
