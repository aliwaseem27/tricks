part of 'user_controller_bloc.dart';

@freezed
class UserControllerEvent with _$UserControllerEvent {
  const factory UserControllerEvent.watchAllStarted() = _WatchAllStarted;

  const factory UserControllerEvent.usersReceived(List<User> users) = _UsersReceived;
}
