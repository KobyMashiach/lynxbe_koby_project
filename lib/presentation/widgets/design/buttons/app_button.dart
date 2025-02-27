import 'package:flutter/material.dart';
import 'package:kh_easy_dev/widgets/input/app_button_widget.dart';
import 'package:lynxbe_koby_project/core/theme/colors.dart';

Widget appButton({
  Function()? onTap,
  required String text,
  bool unfillColors = false,
  bool disableColors = false,
  EdgeInsets? padding,
  EdgeInsets? margin,
  double? textSize,
  Color? primaryColor,
  Color? textColor,
  Widget? leftIcon,
  Widget? rightIcon,
}) {
  return kheasydevAppButton(
    text: text,
    onTap: onTap,
    unfillColors: unfillColors,
    disableColors: disableColors,
    margin: margin ?? EdgeInsets.zero,
    textSize: textSize,
    textColor: textColor,
    padding: padding,
    primaryColor: AppColors.primaryColor,
    leftIcon: leftIcon,
    rightIcon: rightIcon,
  );
}
