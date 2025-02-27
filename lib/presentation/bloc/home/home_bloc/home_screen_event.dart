part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.initialize() = Initialize;
  const factory HomeScreenEvent.logout() = Logout;
}
