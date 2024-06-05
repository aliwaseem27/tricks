import '../../models/user.dart';

abstract class IUserRepository {
  late List<User> allUsers;

  Future<List<User>> getAllUsers();

  Future<void> addUser(User user);

  Future<void> deleteUser(User user);


}
