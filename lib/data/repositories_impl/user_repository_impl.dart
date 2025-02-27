import 'dart:developer';
import 'package:lynxbe_koby_project/data/datasources/user_data_source.dart';
import 'package:lynxbe_koby_project/data/models/user_model/user_model.dart';
import 'package:lynxbe_koby_project/domain/repositories/firestore_repository.dart';
import 'package:lynxbe_koby_project/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource localDB;
  final FirestoreRepository firestoreRepository;
  final collectionPath = 'Users';

  UserRepositoryImpl(this.localDB, this.firestoreRepository);

  @override
  Future<String?> saveUser(UserModel user, [bool saveToServer = true]) async {
    try {
      await localDB.saveUser(user);
      if (saveToServer) {
        await firestoreRepository.createDocument(collectionPath,
            docName: user.email, values: user.toJson());
      }
      return null;
    } catch (e) {
      log("Failed to save user: $e");
      return "Failed to save user";
    }
  }

  @override
  Future<UserModel?> getUser() async {
    try {
      return await localDB.getUser();
    } catch (e) {
      log("Failed to retrieve user: $e");
      return null;
    }
  }

  @override
  Future<UserModel?> getUserFromServer(String email) async {
    try {
      final exist = await firestoreRepository.checkIfDocExists(collectionPath,
          docName: email);
      if (exist) {
        final user = await firestoreRepository.getDocValues(collectionPath,
            docName: email);
        return user != null ? UserModel.fromJson(user) : null;
      }
      return null;
    } catch (e) {
      log("Failed to retrieve user: $e");
      return null;
    }
  }

  @override
  Future<bool> checkIfUserExist(String email) async {
    try {
      return await firestoreRepository.checkIfDocExists(collectionPath,
          docName: email);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await localDB.clearBox();
    } catch (e) {
      log("Failed to logout: $e");
    }
  }
}
