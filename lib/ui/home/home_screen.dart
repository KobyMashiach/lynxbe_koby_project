import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';
import 'package:lynxbe_koby_project/core/colors.dart';
import 'package:lynxbe_koby_project/core/hive/user_data_source.dart';
import 'package:lynxbe_koby_project/core/text_styles.dart';
import 'package:lynxbe_koby_project/models/user_model/user_model.dart';
import 'package:lynxbe_koby_project/repos/user_repo.dart';
import 'package:lynxbe_koby_project/ui/home/bloc/home_screen_bloc.dart';
import 'package:lynxbe_koby_project/ui/login/login_screen.dart';
import 'package:lynxbe_koby_project/widgets/dialogs/general_dialog.dart';
import 'package:lynxbe_koby_project/widgets/general/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => UserDataSource(),
        ),
        RepositoryProvider(
          create: (context) => UserRepo(context.read<UserDataSource>()),
        ),
      ],
      child: BlocProvider(
        create: (context) => HomeScreenBloc(
            repo: context.read<UserRepo>(),
            localDB: context.read<UserDataSource>())
          ..add(const HomeScreenEvent.initialize()),
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
