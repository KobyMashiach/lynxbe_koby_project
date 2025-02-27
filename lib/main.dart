import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lynxbe_koby_project/core/adapters/adapters_controller.dart';
import 'package:lynxbe_koby_project/data/datasources/auth_remote_data_source.dart';
import 'package:lynxbe_koby_project/data/datasources/firestore_remote_data_source.dart';
import 'package:lynxbe_koby_project/data/datasources/user_data_source.dart';
import 'package:lynxbe_koby_project/data/repositories_impl/auth_repository_impl.dart';
import 'package:lynxbe_koby_project/data/repositories_impl/firestore_repository_impl.dart';
import 'package:lynxbe_koby_project/data/repositories_impl/user_repository_impl.dart';
import 'package:lynxbe_koby_project/domain/repositories/auth_repository.dart';
import 'package:lynxbe_koby_project/domain/repositories/firestore_repository.dart';
import 'package:lynxbe_koby_project/domain/repositories/user_repository.dart';
import 'package:lynxbe_koby_project/firebase_options.dart';
import 'package:lynxbe_koby_project/presentation/pages/login_screen.dart';
import 'package:lynxbe_koby_project/presentation/widgets/general/lifecycle_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (kIsWeb) {
    await Hive.initFlutter();
  } else {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDirectory.path);
  }
  AdaptersController.registerAdapters();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserDataSource>(
          create: (context) => UserDataSource(),
        ),
        RepositoryProvider<FirestoreRemoteDataSource>(
          create: (context) => FirestoreRemoteDataSource(),
        ),
        RepositoryProvider<FirestoreRepository>(
          create: (context) => FirestoreRepositoryImpl(
            context.read<FirestoreRemoteDataSource>(),
          ),
        ),
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepositoryImpl(
            context.read<UserDataSource>(),
            context.read<FirestoreRepository>(),
          ),
        ),
        RepositoryProvider<AuthRemoteDataSource>(
          create: (context) => AuthRemoteDataSource(),
        ),
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(
            context.read<AuthRemoteDataSource>(),
          ),
        ),
      ],
      child: LifecycleManager(
        child: MaterialApp(
          navigatorKey: NavigationContextService.navigatorKey,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const LoginScreen(),
        ),
      ),
    );
  }
}

class NavigationContextService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
