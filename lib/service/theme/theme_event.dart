import 'package:amal/service/theme/color_theme.dart';
import 'package:flutter/material.dart';

abstract class ThemeEvent {}

class ChangeColorEvent extends ThemeEvent {
  final ColorTheme colorTheme;

  ChangeColorEvent({required this.colorTheme});
}

class ChangeThemeEvent extends ThemeEvent {
  final ThemeData themeData;

  ChangeThemeEvent({required this.themeData});
}
