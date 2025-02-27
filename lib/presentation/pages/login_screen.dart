import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:lynxbe_koby_project/core/constants/consts.dart';
import 'package:lynxbe_koby_project/core/theme/text_styles.dart';
import 'package:lynxbe_koby_project/data/datasources/user_data_source.dart';
import 'package:lynxbe_koby_project/domain/repositories/auth_repository.dart';
import 'package:lynxbe_koby_project/domain/repositories/user_repository.dart';
import 'package:lynxbe_koby_project/presentation/bloc/authentication/login_bloc/login_screen_bloc.dart';
import 'package:lynxbe_koby_project/presentation/pages/home_screen.dart';
import 'package:lynxbe_koby_project/presentation/pages/register_screen.dart';
import 'package:lynxbe_koby_project/presentation/widgets/design/buttons/app_button.dart';
import 'package:lynxbe_koby_project/presentation/widgets/design/fields/app_textfields.dart';
import 'package:lynxbe_koby_project/presentation/widgets/design/icons/icons.dart';
import 'package:lynxbe_koby_project/presentation/widgets/general/appbar.dart';
import 'package:lynxbe_koby_project/presentation/widgets/general/circular_progress_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kh_easy_dev/kh_easy_dev.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  Map<String, bool> validation = {
    'email': false,
    'password': false,
  };

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginScreenBloc(
        repo: context.read<UserRepository>(),
        localDB: context.read<UserDataSource>(),
        authRepository: context.read<AuthRepository>(),
      )..add(const LoginScreenEvent.initialize()),
      child: BlocConsumer<LoginScreenBloc, LoginScreenState>(
        listenWhen: (previous, current) => current.maybeWhen(
          navigateHome: () => true,
          navigateRegister: () => true,
          message: (_) => true,
          orElse: () => false,
        ),
        buildWhen: (previous, current) => current.maybeWhen(
          navigateHome: () => false,
          navigateRegister: () => false,
          message: (_) => false,
          orElse: () => true,
        ),
        listener: (context, state) {
          state.maybeWhen(
              navigateHome: () => KheasydevNavigatePage()
                  .pushAndRemoveUntilDuration(context, const HomeScreen()),
              navigateRegister: () => KheasydevNavigatePage()
                  .pushAndRemoveUntilDuration(context, const RegisterScreen()),
              message: (msg) => kheasydevAppToast(msg),
              orElse: () {});
        },
        builder: (context, state) {
          final bloc = context.read<LoginScreenBloc>();
          return Scaffold(
            appBar: appAppBar(title: "Login Screen"),
            body: Padding(
              padding: const EdgeInsets.all(24),
              child: state.maybeWhen(
                loading: () => const CircularProgressImage(),
                orElse: () => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text("Lynxbe Koby Project",
                                style: AppTextStyle().bigTitle),
                            Image.asset(appLogo, height: 200),
                            const SizedBox(height: 24),
                            kIsWeb
                                ? Row(
                                    children: textFields
                                        .map((e) => Expanded(child: e))
                                        .toList())
                                : Column(children: textFields),
                            appButton(
                              text: "Login with email",
                              leftIcon: socialIcons(icon: SocialIcons.email),
                              onTap: () {
                                if (checkValidation()) {
                                  bloc.add(
                                    LoginScreenEvent.signInByEmailPassword(
                                        email: emailController.text,
                                        password: passwordController.text),
                                  );
                                }
                              },
                            ),
                            if (!kIsWeb) ...[
                              const SizedBox(height: 24),
                              Row(
                                children: [
                                  Expanded(
                                      child: kheasydevDivider(black: true)),
                                  const Text("Or login with"),
                                  Expanded(
                                      child: kheasydevDivider(black: true)),
                                ],
                              ),
                              const SizedBox(height: 12),
                              appButton(
                                text: "Login with Google",
                                leftIcon: socialIcons(),
                                onTap: () => bloc.add(
                                    const LoginScreenEvent.signInByGoogle()),
                              ),
                            ]
                          ],
                        ),
                      ),
                    ),
                    if (MediaQuery.of(context).viewInsets.bottom == 0)
                      noAccountText(bloc),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> get textFields {
    return [
      AppTextField(
        hintText: "Email",
        controller: emailController,
        showError: validation['email']!,
        keyboard: TextInputType.emailAddress,
      ),
      AppTextField(
        hintText: "Password",
        controller: passwordController,
        showError: validation['password']!,
        checkIfPassword: true,
      ),
    ];
  }

  Text noAccountText(LoginScreenBloc bloc) {
    return Text.rich(
      TextSpan(
        text: "Don't have an account? ",
        children: [
          TextSpan(
            text: "Register",
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap =
                  () => bloc.add(const LoginScreenEvent.registerScreenTap()),
          ),
        ],
      ),
    );
  }

  bool checkValidation() {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (emailController.text.isEmpty) {
      kheasydevAppToast("Required email");
      changeValidation(true, false);
      return false;
    } else if (!emailRegex.hasMatch(emailController.text)) {
      kheasydevAppToast("Email invalid");
      changeValidation(true, false);
      return false;
    } else if (passwordController.text.isEmpty) {
      kheasydevAppToast("Required password");
      changeValidation(false, true);

      return false;
    } else if (passwordController.text.length < 6) {
      kheasydevAppToast("The password must be at least 6 characters.");
      changeValidation(false, true);

      return false;
    }
    changeValidation(false, false);

    return true;
  }

  changeValidation(bool email, bool password) {
    setState(() {
      validation['email'] = email;
      validation['password'] = password;
    });
  }
}
