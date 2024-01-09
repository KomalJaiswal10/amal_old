import 'package:amal/service/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();
  static ThemeData ligthTheme = ThemeData(
    useMaterial3: false,
    fontFamily: GoogleFonts.lato().fontFamily,
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    fontFamily: GoogleFonts.lato().fontFamily,
    scaffoldBackgroundColor: AppColors.black,
    brightness: Brightness.dark,
  );
}
