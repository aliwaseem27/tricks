import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tricks/data/repositories/user_repo_impl.dart';

import '../../models/user.dart';

part 'user_controller_event.dart';

part 'user_controller_state.dart';

part 'user_controller_bloc.freezed.dart';

class UserControllerBloc extends Bloc<UserControllerEvent, UserControllerState> {
  StreamSubscription<List<User>>? _userSubscription;
  final UserRepoImpl userRepoImpl = UserRepoImpl();

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }

  UserControllerBloc() : super(const UserControllerState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      emit(const UserControllerState.loading());
      _userSubscription?.cancel();
      _userSubscription = userRepoImpl.getAllUsers().listen((users) {
        add(UserControllerEvent.usersReceived(users));
      });
    });

    on<_UsersReceived>((event, emit) {
      emit(UserControllerState.loaded(event.users));
    });
  }
}
