import 'package:hive_flutter/hive_flutter.dart';
import 'package:lynxbe_koby_project/data/models/user_model/user_model.dart';

class UserDataSource {
  static const _boxKey = UserModel.hiveKey;
  static const _userKey = 'user';

  Future<Box<UserModel>> initialise() async {
    if (!Hive.isBoxOpen(_boxKey)) {
      return await Hive.openBox<UserModel>(_boxKey);
    } else {
      return Hive.box<UserModel>(_boxKey);
    }
  }

  Future<void> saveUser(UserModel user) async {
    var box = await Hive.openBox<UserModel>(_boxKey);
    await box.put(_userKey, user);
  }

  Future<UserModel?> getUser() async {
    var box = await Hive.openBox<UserModel>(_boxKey);
    return box.get(_userKey);
  }

  Future<void> clearBox() async {
    var box = await Hive.openBox<UserModel>(_boxKey);
    await box.clear();
  }

  Future<void> closeBox() async {
    var box = await Hive.openBox<UserModel>(_boxKey);
    await box.close();
  }
}
