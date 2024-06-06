import 'package:tricks/domain/repositories/i_user_repository.dart';
import 'package:tricks/models/user.dart';

class UserRepoImpl implements IUserRepository {
  @override
  List<User> allUsers = [];

  @override
  Future<void> addUser(User user) async {
    allUsers.add(user);
  }

  @override
  Future<void> deleteUser(User user) async {
    int index = allUsers.indexOf(user);
    if (index != -1) {
      allUsers.removeAt(index);
    }
  }

  @override
  Stream<List<User>> getAllUsers() async* {
    yield allUsers;
  }
}
