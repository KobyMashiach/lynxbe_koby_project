part of 'login_screen_bloc.dart';

@freezed
class LoginScreenEvent with _$LoginScreenEvent {
  const factory LoginScreenEvent.initialize() = Initialize;
  const factory LoginScreenEvent.signInByGoogle() = SignInByGoogle;
  const factory LoginScreenEvent.signInByEmailPassword(
      {required String email,
      required String password}) = SignInByEmailPassword;
  const factory LoginScreenEvent.registerScreenTap() = RegisterScreenTap;
}
