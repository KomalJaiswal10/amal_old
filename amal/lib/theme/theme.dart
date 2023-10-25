import 'package:amal/constant/colors.dart';
import 'package:amal/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AAppTheme {
  AAppTheme._();

  static ThemeData ligthTheme = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.lato().fontFamily,
      scaffoldBackgroundColor: AAppColors.white,
      brightness: Brightness.light);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.lato().fontFamily,
      scaffoldBackgroundColor: AAppColors.amalLightBlack,
      brightness: Brightness.dark,
      textTheme: ATextTheme.lightTextTheme);
}
