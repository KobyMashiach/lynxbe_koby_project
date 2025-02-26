import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lynxbe_koby_project/core/hive/user_data_source.dart';
import 'package:lynxbe_koby_project/models/user_model/user_model.dart';
import 'package:lynxbe_koby_project/services/firebase/firestore_data.dart';

class UserRepo {
  final UserDataSource localDB;
  final collection = FirebaseFirestore.instance.collection('Users');

  UserRepo(this.localDB);

  Future<String?> saveUser(UserModel user, [bool saveToServer = true]) async {
    try {
      await localDB.saveUser(user);
      if (saveToServer) {
        await firestoreNewDoc(collection,
            docName: user.email, values: user.toJson());
      }
      return null;
    } catch (e) {
      log("Failed to save user: $e");
      return "Failed to save user";
    }
  }

  Future<UserModel?> getUser() async {
    try {
      return await localDB.getUser();
    } catch (e) {
      log("Failed to retrieve user: $e");
      return null;
    }
  }

  Future<UserModel?> getUserFromServer(String email) async {
    try {
      final exist = await firestoreCheckIfDocExists(collection, email);
      if (exist) {
        final user = await firestoreGetDocValues(collection, email);
        return UserModel.fromJson(user);
      }
      return null;
    } catch (e) {
      log("Failed to retrieve user: $e");
      return null;
    }
  }

  Future<bool> checkIfUserExist(String email) async {
    try {
      return await firestoreCheckIfDocExists(collection, email);
    } catch (e) {
      return false;
    }
  }

  Future logout() async {
    try {
      await localDB.clearBox();
    } catch (e) {
      log("Failed to logout: $e");
    }
  }
}
