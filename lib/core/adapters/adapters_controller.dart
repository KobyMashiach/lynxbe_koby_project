import 'package:hive_flutter/hive_flutter.dart';
import 'package:lynxbe_koby_project/data/models/user_model/user_model.dart';

class AdaptersController {
  static void registerAdapters() {
    Hive.registerAdapter<UserModel>(UserModelAdapter());
  }
}
