import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lynxbe_koby_project/data/datasources/user_data_source.dart';
import 'package:lynxbe_koby_project/data/models/user_model/user_model.dart';
import 'package:lynxbe_koby_project/domain/repositories/auth_repository.dart';
import 'package:lynxbe_koby_project/domain/repositories/user_repository.dart';

part 'login_screen_bloc.freezed.dart';
part 'login_screen_event.dart';
part 'login_screen_state.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  final UserRepository repo;
  final UserDataSource localDB;
  final AuthRepository authRepository;

  LoginScreenBloc(
      {required this.repo, required this.localDB, required this.authRepository})
      : super(const LoginScreenState.initial()) {
    on<LoginScreenEvent>((event, emit) async {
      await event.map(
        initialize: (e) async => initialize(e, emit),
        signInByGoogle: (e) async => signInByGoogle(e, emit),
        signInByEmailPassword: (e) async => signInByEmailPassword(e, emit),
        registerScreenTap: (e) async =>
            emit(const LoginScreenState.navigateRegister()),
      );
    });
  }

  Future<void> initialize(e, Emitter<LoginScreenState> emit) async {
    emit(const LoginScreenState.loading());

    final user = await repo.getUser();
    if (user != null) {
      emit(const LoginScreenState.navigateHome());
    } else {
      emit(const LoginScreenState.refreshUI());
    }
  }

  Future<void> signInByGoogle(
      SignInByGoogle e, Emitter<LoginScreenState> emit) async {
    emit(const LoginScreenState.loading());
    final googleCredential = await authRepository.loginWithGoogle();
    if (googleCredential != null) {
      final user =
          UserModel.fromJson(googleCredential.additionalUserInfo!.profile!);
      final userExist = await repo.checkIfUserExist(user.email);
      if (userExist) {
        final msg = await repo.saveUser(user, false);
        if (msg != null) {
          emit(LoginScreenState.message(msg));
        } else {
          log(user.toString());
          emit(const LoginScreenState.navigateHome());
        }
      } else {
        emit(const LoginScreenState.message("User does not exist"));
      }
    }
    emit(const LoginScreenState.refreshUI());
  }

  Future<void> signInByEmailPassword(
      SignInByEmailPassword e, Emitter<LoginScreenState> emit) async {
    emit(const LoginScreenState.loading());
    final userCredential =
        await authRepository.loginWithEmailAndPassword(e.email, e.password);
    if (userCredential != null) {
      final userExist = await repo.checkIfUserExist(e.email);
      if (userExist) {
        final user = await repo.getUserFromServer(e.email);
        if (user != null) {
          final msg = await repo.saveUser(user, false);
          if (msg != null) {
            emit(LoginScreenState.message(msg));
          } else {
            log(user.toString());
            emit(const LoginScreenState.navigateHome());
          }
        }
      } else {
        emit(const LoginScreenState.message("User does not exist"));
      }
    } else {
      emit(const LoginScreenState.message("User does not exist"));
    }
    emit(const LoginScreenState.refreshUI());
  }
}
