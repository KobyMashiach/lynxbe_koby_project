import 'package:firebase_auth/firebase_auth.dart';
import 'package:lynxbe_koby_project/domain/repositories/auth_repository.dart';

class LoginWithGoogle {
  final AuthRepository repository;

  LoginWithGoogle(this.repository);

  Future<UserCredential?> call() {
    return repository.loginWithGoogle();
  }
}
