import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lynxbe_koby_project/data/datasources/user_data_source.dart';
import 'package:lynxbe_koby_project/data/models/user_model/user_model.dart';
import 'package:lynxbe_koby_project/domain/repositories/auth_repository.dart';
import 'package:lynxbe_koby_project/domain/repositories/user_repository.dart';

part 'register_screen_bloc.freezed.dart';
part 'register_screen_event.dart';
part 'register_screen_state.dart';

class RegisterScreenBloc
    extends Bloc<RegisterScreenEvent, RegisterScreenState> {
  final UserRepository repo;
  final UserDataSource localDB;
  final AuthRepository authRepository;

  RegisterScreenBloc(
      {required this.repo, required this.localDB, required this.authRepository})
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
    final googleCredential = await authRepository.loginWithGoogle();
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
        await authRepository.registerWithEmailAndPassword(e.email, e.password);
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
