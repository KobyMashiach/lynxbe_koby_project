import 'package:bloc/bloc.dart';
import 'package:lynxbe_koby_project/services/firebase/firebase_auth.dart';
import 'package:meta/meta.dart';

import 'package:lynxbe_koby_project/core/hive/user_data_source.dart';
import 'package:lynxbe_koby_project/models/user_model/user_model.dart';
import 'package:lynxbe_koby_project/repos/user_repo.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_bloc.freezed.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final UserRepo repo;
  final UserDataSource localDB;
  HomeScreenBloc({required this.repo, required this.localDB})
      : super(const HomeScreenState.initial(null)) {
    on<HomeScreenEvent>((event, emit) async {
      await event.map(
        initialize: (e) async => initialize(e, emit),
        logout: (e) async => logout(e, emit),
      );
    });
  }

  Future<void> initialize(e, Emitter<HomeScreenState> emit) async {
    emit(const HomeScreenState.loading(null));
    final user = await repo.getUser();
    if (user != null) {
      emit(HomeScreenState.initial(user));
    } else {
      emit(const HomeScreenState.refreshUI(null));
    }
  }

  Future<void> logout(e, Emitter<HomeScreenState> emit) async {
    emit(const HomeScreenState.loading(null));
    await logoutFirebase();
    await repo.logout();
    emit(const HomeScreenState.navLogin(null));
  }
}
