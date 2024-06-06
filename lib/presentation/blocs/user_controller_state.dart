part of 'user_controller_bloc.dart';

@freezed
class UserControllerState with _$UserControllerState {
  const factory UserControllerState.initial() = _Initial;

  const factory UserControllerState.loading() = _Loading;

  const factory UserControllerState.loaded(List<User> users) = _Loaded;

  const factory UserControllerState.error(String message) = _Error;
}
