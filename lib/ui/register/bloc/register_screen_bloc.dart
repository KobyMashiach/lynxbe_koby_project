import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lynxbe_koby_project/core/hive/user_data_source.dart';
import 'package:lynxbe_koby_project/models/user_model/user_model.dart';
import 'package:lynxbe_koby_project/repos/user_repo.dart';
import 'package:lynxbe_koby_project/services/firebase/firebase_auth.dart';

part 'register_screen_bloc.freezed.dart';
part 'register_screen_event.dart';
part 'register_screen_state.dart';

class RegisterScreenBloc
    extends Bloc<RegisterScreenEvent, RegisterScreenState> {
  final UserRepo repo;
  final UserDataSource localDB;
  RegisterScreenBloc({required this.repo, required this.localDB})
      : super(const RegisterScreenState.initial()) {
    on<RegisterScreenEvent>((event, emit) async {
      await event.map(
        initialize: (e) async => initialize(e, emit),
        signInByGoogle: (e) async => signInByGoogle(e, emit),
        signInByEmailPassword: (e) async => signInByEmailPassword(e, emit),
        loginScreenTap: (e) async =>
            emit(const RegisterScreenState.navigateLogin()),
      );
    });
  }

  Future<void> initialize(e, Emitter<RegisterScreenState> emit) async {
    emit(const RegisterScreenState.loading());

    final user = await repo.getUser();
    if (user != null) {
      emit(const RegisterScreenState.navigateHome());
    } else {
      emit(const RegisterScreenState.refreshUI());
    }
  }

  Future<void> signInByGoogle(
      SignInByGoogle e, Emitter<RegisterScreenState> emit) async {
    emit(const RegisterScreenState.loading());
    final googleCredential = await loginWithGoogle();
    if (googleCredential != null) {
      final user =
          UserModel.fromJson(googleCredential.additionalUserInfo!.profile!);
      final msg = await repo.saveUser(user);
      if (msg != null) {
        emit(RegisterScreenState.message(msg));
      } else {
        log(user.toString());
        emit(const RegisterScreenState.navigateHome());
      }
    }
    emit(const RegisterScreenState.refreshUI());
  }

  Future<void> signInByEmailPassword(
      SignInByEmailPassword e, Emitter<RegisterScreenState> emit) async {
    emit(const RegisterScreenState.loading());
    final userCredential =
        await registerWithEmailAndPassword(e.email, e.password);
    if (userCredential != null) {
      UserModel user =
          UserModel(email: e.email, firstName: e.fName, lastName: e.lName);
      final msg = await repo.saveUser(user);
      if (msg != null) {
        emit(RegisterScreenState.message(msg));
      } else {
        log(user.toString());
        await repo.saveUser(user);
        emit(const RegisterScreenState.navigateHome());
      }
    }
    emit(const RegisterScreenState.refreshUI());
  }

  registerWithGoogle() {}
}
