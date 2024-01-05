import 'package:amal/service/theme/color_theme.dart';
import 'package:get/get.dart';

abstract class AppFinals {
  final ColorThemeExtension _colorTheme =
      Get.context!.theme.extension<ColorThemeExtension>()!;

  ColorThemeExtension get colors => _colorTheme;
}
