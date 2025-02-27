import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';
import 'package:lynxbe_koby_project/core/theme/colors.dart';
import 'package:lynxbe_koby_project/core/theme/text_styles.dart';
import 'package:lynxbe_koby_project/data/datasources/user_data_source.dart';
import 'package:lynxbe_koby_project/data/models/user_model/user_model.dart';
import 'package:lynxbe_koby_project/domain/repositories/auth_repository.dart';
import 'package:lynxbe_koby_project/domain/repositories/user_repository.dart';
import 'package:lynxbe_koby_project/presentation/bloc/home_bloc/home_screen_bloc.dart';
import 'package:lynxbe_koby_project/presentation/pages/login_screen.dart';
import 'package:lynxbe_koby_project/presentation/widgets/dialogs/general_dialog.dart';
import 'package:lynxbe_koby_project/presentation/widgets/general/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenBloc(
        repo: context.read<UserRepository>(),
        localDB: context.read<UserDataSource>(),
        authRepository: context.read<AuthRepository>(),
      )..add(const HomeScreenEvent.initialize()),
      child: BlocConsumer<HomeScreenBloc, HomeScreenState>(
        listenWhen: (previous, current) => current.maybeWhen(
          navLogin: (_) => true,
          orElse: () => false,
        ),
        buildWhen: (previous, current) => current.maybeWhen(
          navLogin: (_) => false,
          orElse: () => true,
        ),
        listener: (context, state) {
          state.maybeWhen(
              navLogin: (_) => KheasydevNavigatePage()
                  .pushAndRemoveUntilDuration(context, const LoginScreen()),
              orElse: () {});
        },
        builder: (context, state) {
          final bloc = context.read<HomeScreenBloc>();
          final UserModel? user = state.user;

          return Scaffold(
            appBar: appAppBar(title: "Home screen", actions: [
              IconButton(
                onPressed: () async => await showDialog(
                    context: context,
                    builder: (context) => generalDialog(
                        title: "Logout",
                        description: "Are you sure you want to logout?",
                        okButtonOnTap: () =>
                            bloc.add(const HomeScreenEvent.logout()))),
                icon: const Icon(Icons.logout),
              )
            ]),
            body: Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: user != null
                    ? Column(
                        children: [
                          profileImage(user),
                          detailRow("First name", user.firstName),
                          detailRow("Last name", user.lastName),
                        ],
                      )
                    : const Text("No user data"),
              ),
            ),
          );
        },
      ),
    );
  }

  CircleAvatar profileImage(UserModel user) {
    return CircleAvatar(
      radius: 80,
      foregroundImage:
          user.picture != null ? NetworkImage(user.picture!) : null,
      backgroundColor: AppColors.primaryColor,
      child: user.picture == null
          ? Text(
              user.firstName![0],
              style: AppTextStyle().profileChar,
            )
          : null,
    );
  }

  ListTile detailRow(String leading, String? trailing) {
    return ListTile(
      leading: Text(
        "$leading: ",
        style: AppTextStyle().description,
      ),
      trailing: Text(
        trailing ?? "Null",
        style: AppTextStyle().description,
      ),
    );
  }
}
