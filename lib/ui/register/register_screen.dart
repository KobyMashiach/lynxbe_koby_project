import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:lynxbe_koby_project/core/consts.dart';
import 'package:lynxbe_koby_project/core/hive/user_data_source.dart';
import 'package:lynxbe_koby_project/core/text_styles.dart';
import 'package:lynxbe_koby_project/repos/user_repo.dart';
import 'package:lynxbe_koby_project/ui/home/home_screen.dart';
import 'package:lynxbe_koby_project/ui/login/login_screen.dart';
import 'package:lynxbe_koby_project/ui/register/bloc/register_screen_bloc.dart';
import 'package:lynxbe_koby_project/widgets/design/buttons/app_button.dart';
import 'package:lynxbe_koby_project/widgets/design/fields/app_textfields.dart';
import 'package:lynxbe_koby_project/widgets/design/icons/icons.dart';
import 'package:lynxbe_koby_project/widgets/general/appbar.dart';
import 'package:lynxbe_koby_project/widgets/general/circular_progress_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kh_easy_dev/kh_easy_dev.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController fNameController;
  late TextEditingController lNameController;

  Map<String, bool> validation = {
    'email': false,
    'password': false,
    'fname': false,
    'lname': false,
  };

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    fNameController = TextEditingController();
    lNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    fNameController.dispose();
    lNameController.dispose();
    super.dispose();
  }

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
        create: (context) => RegisterScreenBloc(
            repo: context.read<UserRepo>(),
            localDB: context.read<UserDataSource>())
          ..add(const RegisterScreenEvent.initialize()),
        child: BlocConsumer<RegisterScreenBloc, RegisterScreenState>(
          listenWhen: (previous, current) => current.maybeWhen(
            navigateHome: () => true,
            navigateLogin: () => true,
            message: (_) => true,
            orElse: () => false,
          ),
          buildWhen: (previous, current) => current.maybeWhen(
            navigateHome: () => false,
            navigateLogin: () => false,
            message: (_) => false,
            orElse: () => true,
          ),
          listener: (context, state) {
            state.maybeWhen(
                navigateHome: () => KheasydevNavigatePage()
                    .pushAndRemoveUntilDuration(context, const HomeScreen()),
                navigateLogin: () => KheasydevNavigatePage()
                    .pushAndRemoveUntilDuration(context, const LoginScreen()),
                message: (msg) => kheasydevAppToast(msg),
                orElse: () {});
          },
          builder: (context, state) {
            final bloc = context.read<RegisterScreenBloc>();
            return Scaffold(
              appBar: appAppBar(title: "Register Screen"),
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
                              Image.asset(appLogo, height: 100),
                              const SizedBox(height: 24),
                              kIsWeb
                                  ? Row(
                                      children: authTextFields
                                          .map((e) => Expanded(child: e))
                                          .toList())
                                  : Column(children: authTextFields),
                              kIsWeb
                                  ? Row(
                                      children: detailsTextFields
                                          .map((e) => Expanded(child: e))
                                          .toList())
                                  : Column(children: detailsTextFields),
                              appButton(
                                text: "Register with email",
                                leftIcon: socialIcons(icon: SocialIcons.email),
                                onTap: () {
                                  if (checkValidation()) {
                                    bloc.add(
                                      RegisterScreenEvent.signInByEmailPassword(
                                        email: emailController.text,
                                        password: passwordController.text,
                                        fName: fNameController.text,
                                        lName: lNameController.text,
                                      ),
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
                                    const Text("Or register with"),
                                    Expanded(
                                        child: kheasydevDivider(black: true)),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                appButton(
                                  text: "Register with Google",
                                  leftIcon: socialIcons(),
                                  onTap: () => bloc.add(
                                      const RegisterScreenEvent
                                          .signInByGoogle()),
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
      ),
    );
  }

  List<Widget> get detailsTextFields {
    return [
      AppTextField(
        hintText: "First name",
        controller: fNameController,
        showError: validation['fname']!,
        textInputAction: TextInputAction.next,
      ),
      AppTextField(
        hintText: "Last name",
        controller: lNameController,
        showError: validation['lname']!,
      ),
    ];
  }

  List<Widget> get authTextFields {
    return [
      AppTextField(
        hintText: "Email",
        controller: emailController,
        showError: validation['email']!,
        keyboard: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
      ),
      AppTextField(
        hintText: "Password",
        controller: passwordController,
        showError: validation['password']!,
        checkIfPassword: true,
        textInputAction: TextInputAction.next,
      ),
    ];
  }

  Text noAccountText(RegisterScreenBloc bloc) {
    return Text.rich(
      TextSpan(
        text: "Have an account? ",
        children: [
          TextSpan(
            text: "Login",
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap =
                  () => bloc.add(const RegisterScreenEvent.loginScreenTap()),
          ),
        ],
      ),
    );
  }

  bool checkValidation() {
    if (!_isValidEmail(emailController.text)) return false;
    if (!_isValidPassword(passwordController.text)) return false;
    if (!_isValidName(fNameController.text, "First name", true)) return false;
    if (!_isValidName(lNameController.text, "Last name", false)) return false;

    changeValidation(false, false, false, false);
    return true;
  }

  bool _isValidEmail(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (email.isEmpty) {
      _showValidationError("Required email", email: true);
      return false;
    } else if (!emailRegex.hasMatch(email)) {
      _showValidationError("Invalid email", email: true);
      return false;
    }

    return true;
  }

  bool _isValidPassword(String password) {
    if (password.isEmpty) {
      _showValidationError("Required password", password: true);
      return false;
    } else if (password.length < 6) {
      _showValidationError("The password must be at least 6 characters.",
          password: true);
      return false;
    }

    return true;
  }

  bool _isValidName(String name, String fieldName, bool isFirstName) {
    if (name.isEmpty) {
      _showValidationError("Required $fieldName",
          fname: isFirstName, lname: !isFirstName);
      return false;
    } else if (name.length < 2) {
      _showValidationError("The $fieldName must be at least 2 characters.",
          fname: isFirstName, lname: !isFirstName);
      return false;
    }

    return true;
  }

  void _showValidationError(String message,
      {bool email = false,
      bool password = false,
      bool fname = false,
      bool lname = false}) {
    kheasydevAppToast(message);
    changeValidation(email, password, fname, lname);
  }

  void changeValidation(bool email, bool password, bool fname, bool lname) {
    setState(() {
      validation['email'] = email;
      validation['password'] = password;
      validation['fname'] = fname;
      validation['lname'] = lname;
    });
  }
}
