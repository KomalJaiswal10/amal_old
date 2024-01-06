import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppTheme {
  static ThemeData ligthTheme = ThemeData(
    useMaterial3: false,
    fontFamily: GoogleFonts.lato().fontFamily,
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
  ).copyWith(extensions: <ThemeExtension<dynamic>>[
    ColorThemeExtension(
        background: AppColors.white,
        buttonText: AppColors.white,
        textFieldBg: AppColors.whiteBg,
        textColor: AppColors.black)
  ]);

  static ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    fontFamily: GoogleFonts.lato().fontFamily,
    scaffoldBackgroundColor: AppColors.black,
    brightness: Brightness.dark,
  ).copyWith(extensions: <ThemeExtension<dynamic>>[
    ColorThemeExtension(
        background: AppColors.black,
        buttonText: AppColors.whiteOpacity,
        textFieldBg: AppColors.primaryBlack,
        textColor: AppColors.white)
  ]);
}
