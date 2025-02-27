import 'package:firebase_auth/firebase_auth.dart';
import 'package:lynxbe_koby_project/data/datasources/auth_remote_data_source.dart';
import 'package:lynxbe_koby_project/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<bool> isUserLoggedIn() => remoteDataSource.isUserLoggedIn();

  @override
  Future<UserCredential?> loginWithGoogle() =>
      remoteDataSource.loginWithGoogle();

  @override
  Future<UserCredential?> loginWithEmailAndPassword(
          String email, String password) =>
      remoteDataSource.loginWithEmailAndPassword(email, password);

  @override
  Future<UserCredential?> registerWithEmailAndPassword(
          String email, String password) =>
      remoteDataSource.registerWithEmailAndPassword(email, password);

  @override
  Future<String> logout() => remoteDataSource.logout();
}
