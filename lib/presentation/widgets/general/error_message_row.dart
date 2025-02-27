import 'package:flutter/material.dart';
import 'package:lynxbe_koby_project/core/theme/colors.dart';
import 'package:lynxbe_koby_project/core/theme/text_styles.dart';

Widget errorMessageRow(
    {required String message, EdgeInsets? padding, Color? color}) {
  return Padding(
    padding: padding ?? const EdgeInsets.only(right: 24, left: 24, bottom: 12),
    child: Row(
      children: [
        Icon(
          Icons.info_outline,
          color: color ?? AppColors.error,
          size: 16,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            message,
            style: AppTextStyle().error.copyWith(color: color),
          ),
        ),
      ],
    ),
  );
}
