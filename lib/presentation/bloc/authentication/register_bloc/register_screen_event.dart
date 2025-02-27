part of 'register_screen_bloc.dart';

@freezed
class RegisterScreenEvent with _$RegisterScreenEvent {
  const factory RegisterScreenEvent.initialize() = Initialize;
  const factory RegisterScreenEvent.signInByGoogle() = SignInByGoogle;
  const factory RegisterScreenEvent.signInByEmailPassword(
      {required String email,
      required String password,
      required String fName,
      required String lName}) = SignInByEmailPassword;
  const factory RegisterScreenEvent.loginScreenTap() = LoginScreenTap;
}
