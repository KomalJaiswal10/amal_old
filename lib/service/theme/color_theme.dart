import 'package:flutter/material.dart';

class ColorThemeExtension extends ThemeExtension<ColorThemeExtension> {
  final Color? background;
  final Color? buttonText;
  final Color? textFieldBg;
  final Color? textColor;

  ColorThemeExtension({
    required this.background,
    required this.buttonText,
    required this.textFieldBg,
    required this.textColor,
  });

  @override
  ThemeExtension<ColorThemeExtension> copyWith() {
    return ColorThemeExtension(
        background: background,
        buttonText: buttonText,
        textFieldBg: textFieldBg,
        textColor: textColor);
  }

  @override
  ThemeExtension<ColorThemeExtension> lerp(
      covariant ThemeExtension<ColorThemeExtension>? other, double t) {
    return ColorThemeExtension(
        background: background,
        buttonText: buttonText,
        textFieldBg: textFieldBg,
        textColor: textColor);
  }
}
