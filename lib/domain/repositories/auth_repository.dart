import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<bool> isUserLoggedIn();
  Future<UserCredential?> loginWithGoogle();
  Future<UserCredential?> loginWithEmailAndPassword(
      String email, String password);
  Future<UserCredential?> registerWithEmailAndPassword(
      String email, String password);
  Future<String> logout();
}
