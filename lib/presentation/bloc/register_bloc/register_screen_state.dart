part of 'register_screen_bloc.dart';

@freezed
class RegisterScreenState with _$RegisterScreenState {
  const factory RegisterScreenState.initial() = _RegisterScreenInitial;
  const factory RegisterScreenState.loading() = _RegisterScreenLoading;
  const factory RegisterScreenState.refreshUI() = _RegisterScreenRefreshUI;
  const factory RegisterScreenState.message(String msg) =
      _RegisterScreenMessage;
  const factory RegisterScreenState.navigateHome() =
      _RegisterScreenNavigateHome;
  const factory RegisterScreenState.navigateLogin() =
      _RegisterScreenNavigateLogin;
}
