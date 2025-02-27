import 'package:lynxbe_koby_project/domain/repositories/auth_repository.dart';

class Logout {
  final AuthRepository repository;

  Logout(this.repository);

  Future<String> call() {
    return repository.logout();
  }
}
