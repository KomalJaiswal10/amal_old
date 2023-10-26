import 'package:amal/service/constant/colors.dart';
import 'package:flutter/material.dart';

class ATextTheme {
  ATextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(color: AAppColors.black),
    headlineMedium: const TextStyle().copyWith(color: AAppColors.black),
    headlineSmall: const TextStyle().copyWith(color: AAppColors.black),
    titleLarge: const TextStyle().copyWith(color: AAppColors.black),
    titleMedium: const TextStyle().copyWith(color: AAppColors.black),
    titleSmall: const TextStyle().copyWith(color: AAppColors.black),
    labelLarge: const TextStyle().copyWith(color: AAppColors.black),
    labelMedium: const TextStyle().copyWith(color: AAppColors.black),
    bodyLarge: const TextStyle().copyWith(color: AAppColors.black),
    bodyMedium: const TextStyle().copyWith(color: AAppColors.black),
    bodySmall: const TextStyle().copyWith(color: AAppColors.black),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(color: AAppColors.white),
    headlineMedium: const TextStyle().copyWith(color: AAppColors.white),
    headlineSmall: const TextStyle().copyWith(color: AAppColors.white),
    titleLarge: const TextStyle().copyWith(color: AAppColors.white),
    titleMedium: const TextStyle().copyWith(color: AAppColors.white),
    titleSmall: const TextStyle().copyWith(color: AAppColors.white),
    labelLarge: const TextStyle().copyWith(color: AAppColors.white),
    labelMedium: const TextStyle().copyWith(color: AAppColors.white),
    bodyLarge: const TextStyle().copyWith(color: AAppColors.white),
    bodyMedium: const TextStyle().copyWith(color: AAppColors.white),
    bodySmall: const TextStyle().copyWith(color: AAppColors.white),
  );
}
