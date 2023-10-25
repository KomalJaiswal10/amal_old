import 'package:amal/constant/colors.dart';
import 'package:flutter/material.dart';

class ATextTheme {
  ATextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: AAppColors.white),
  );
}
