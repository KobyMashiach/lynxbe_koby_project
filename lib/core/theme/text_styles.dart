import 'package:flutter/material.dart';

class AppTextStyle {
  TextStyle get bigTitle =>
      const TextStyle(fontSize: 36, fontWeight: FontWeight.bold);
  TextStyle get title =>
      const TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  TextStyle get description => const TextStyle(fontSize: 20);
  TextStyle get profileChar =>
      const TextStyle(fontSize: 80, fontWeight: FontWeight.bold);
  TextStyle get error => const TextStyle(fontSize: 16, color: Colors.red);
}
