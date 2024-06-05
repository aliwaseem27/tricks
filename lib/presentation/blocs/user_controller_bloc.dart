import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_controller_event.dart';
part 'user_controller_state.dart';
part 'user_controller_bloc.freezed.dart';

class UserControllerBloc extends Bloc<UserControllerEvent, UserControllerState> {
  UserControllerBloc() : super(const UserControllerState.initial()) {
    on<UserControllerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
