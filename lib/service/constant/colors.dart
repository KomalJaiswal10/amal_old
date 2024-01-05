import 'package:amal/service/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  AppColors._();

  static ColorThemeExtension colors =
      Theme.of(Get.context!).extension<ColorThemeExtension>()!;

  // App Colors
  static const Color primaryBlue = Color(0xff177C88);
  static const Color primaryDarkBlue = Color(0xff2F5D7F);
  static Color primaryBlack = const Color(0xff151515);
  static Color secondaryBlack = const Color(0xff252525);

  // Text Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;

  // Background Colors
  static const whiteBg = Color(0xffE3EBF3);
  static Color whiteOpacity = Colors.white.withOpacity(.6);
}
