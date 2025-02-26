import 'package:flutter/material.dart';
import 'package:kh_easy_dev/kh_easy_dev.dart';
import 'package:lynxbe_koby_project/core/colors.dart';
import 'package:lynxbe_koby_project/core/consts.dart';
import 'package:lynxbe_koby_project/main.dart';

appAppBar({
  required String title,
  List<Widget>? actions,
  Widget? developerPage,
  VoidCallback? onBackButtonPreesed,
  BuildContext? context,
  (String, Function(String))? searchAppBar,
}) {
  return kheasydevAppBar(
    title: title,
    logoPath: appLogo,
    primaryColor: AppColors.primaryColor,
    shadowColor: AppColors.shadowColor,
    titleColor: Colors.white,
    actions: actions,
    leading: onBackButtonPreesed != null
        ? IconButton(
            onPressed: onBackButtonPreesed, icon: const Icon(Icons.arrow_back))
        : null,
    context: context ?? NavigationContextService.navigatorKey.currentContext,
    searchAppBar: searchAppBar,
  );
}
