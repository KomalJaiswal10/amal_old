import 'package:amal/service/constant/colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = const TextTheme().copyWith();

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(color: AppColors.white),
    headlineMedium: const TextStyle().copyWith(color: AppColors.white),
    headlineSmall: const TextStyle().copyWith(color: AppColors.white),
    titleLarge: const TextStyle().copyWith(color: AppColors.white),
    titleMedium: const TextStyle().copyWith(color: AppColors.white),
    titleSmall: const TextStyle().copyWith(color: AppColors.white),
    labelLarge: const TextStyle().copyWith(color: AppColors.white),
    labelMedium: const TextStyle().copyWith(color: AppColors.white),
    bodyLarge: const TextStyle().copyWith(color: AppColors.white),
    bodyMedium: const TextStyle().copyWith(color: AppColors.white),
    bodySmall: const TextStyle().copyWith(color: AppColors.white),
  );
}
