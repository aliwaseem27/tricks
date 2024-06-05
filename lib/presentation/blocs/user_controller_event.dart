part of 'user_controller_bloc.dart';

@freezed
class UserControllerEvent with _$UserControllerEvent {
  const factory UserControllerEvent.started() = _Started;
}
