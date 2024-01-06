import 'package:amal/service/theme/color_theme.dart';
import 'package:get/get.dart';

final class AppFinals {
  static final ColorThemeExtension _colorTheme =
      Get.context!.theme.extension<ColorThemeExtension>()!;

  static ColorThemeExtension get colors => _colorTheme;
}
