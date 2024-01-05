import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/theme/color_theme.dart';
import 'package:amal/service/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static late bool isDark;

  static ThemeData ligthTheme = ThemeData(
          useMaterial3: false,
          fontFamily: GoogleFonts.lato().fontFamily,
          scaffoldBackgroundColor: AppColors.white,
          brightness: Brightness.light,
          )
      .copyWith(extensions: <ThemeExtension<dynamic>>[
    ColorThemeExtension(
        background: AppColors.white,
        buttonText: AppColors.white,
        primaryIcon: AppColors.primaryBlue,
        textFieldBg: AppColors.whiteBg)
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
        primaryIcon: AppColors.whiteOpacity,
        textFieldBg: AppColors.primaryBlack)
  ]);
}
