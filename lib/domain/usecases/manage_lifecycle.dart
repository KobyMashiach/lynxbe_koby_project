import 'package:lynxbe_koby_project/data/datasources/user_data_source.dart';

class ManageLifecycle {
  final UserDataSource userDataSource;

  ManageLifecycle(this.userDataSource);

  void onResume() {
    userDataSource.initialise();
  }

  void onPause() {
    userDataSource.closeBox();
  }
}
