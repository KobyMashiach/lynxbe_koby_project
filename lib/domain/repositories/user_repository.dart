import 'package:lynxbe_koby_project/data/models/user_model/user_model.dart';

abstract class UserRepository {
  Future<String?> saveUser(UserModel user, [bool saveToServer = true]);
  Future<UserModel?> getUser();
  Future<UserModel?> getUserFromServer(String email);
  Future<bool> checkIfUserExist(String email);
  Future<void> logout();
}
