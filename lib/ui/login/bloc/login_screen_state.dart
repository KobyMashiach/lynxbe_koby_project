part of 'login_screen_bloc.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState.initial() = _LoginScreenInitial;
  const factory LoginScreenState.loading() = _LoginScreenLoading;
  const factory LoginScreenState.refreshUI() = _LoginScreenRefreshUI;
  const factory LoginScreenState.message(String msg) = _LoginScreenMessage;
  const factory LoginScreenState.navigateHome() = _LoginScreenNavigateHome;
  const factory LoginScreenState.navigateRegister() =
      _LoginScreenNavigateRegister;
}
