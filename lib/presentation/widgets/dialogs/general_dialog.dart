import 'package:flutter/widgets.dart';
import 'package:kh_easy_dev/widgets/general/dialog_v2.dart';
import 'package:lynxbe_koby_project/core/theme/colors.dart';

Widget generalDialog({
  final String? title,
  final String? description,
  final bool shouldDisplayX = true,
  final Color? backgroundColor,
  final Color? primaryColor,
  final Color? buttonsTextColor,
  final double? buttonsTextSize,
  final double? titleTextSize,
  final double? descriptionTextSize,
  final bool oneButton = false,
  final bool noButtons = false,
  final List<Widget>? buttons,
  final String? okButtonText,
  final String? cancelButtonText,
  final bool childBeforeTitle = false,
  final Widget? child,
  final double? height,
  final double? width,
  final VoidCallback? okButtonOnTap,
  final VoidCallback? cancelButtonOnTap,
}) {
  return KhEasydevDialogV2(
    title: title,
    description: description,
    shouldDisplayX: shouldDisplayX,
    backgroundColor: backgroundColor,
    primaryColor: primaryColor ?? AppColors.primaryColor,
    buttonsTextColor: buttonsTextColor,
    buttonsTextSize: buttonsTextSize ?? 16,
    titleTextSize: titleTextSize ?? 32,
    descriptionTextSize: descriptionTextSize ?? 24,
    oneButton: oneButton,
    noButtons: noButtons,
    buttons: buttons,
    okButtonText: okButtonText ?? "OK",
    cancelButtonText: cancelButtonText ?? "Cancel",
    childBeforeTitle: childBeforeTitle,
    height: height,
    width: width,
    okButtonOnTap: okButtonOnTap,
    cancelButtonOnTap: cancelButtonOnTap,
    child: child,
  );
}
