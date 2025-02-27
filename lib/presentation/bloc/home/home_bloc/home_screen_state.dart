part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial(UserModel? user) = _HomeScreenInitial;
  const factory HomeScreenState.loading(UserModel? user) = _HomeScreenLoading;
  const factory HomeScreenState.refreshUI(UserModel? user) =
      _HomeScreenRefreshUI;
  const factory HomeScreenState.navLogin(UserModel? user) = _HomeScreenNavLogin;
}
