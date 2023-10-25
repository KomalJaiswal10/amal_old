import 'package:amal/constant/colors.dart';
import 'package:amal/constant/dimensions.dart';
import 'package:flutter/material.dart';

class ATextTheme {
  ATextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: ADimensions.size32, fontWeight: FontWeight.bold, color: AAppColors.white),
  );
}
