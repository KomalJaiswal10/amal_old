import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/theme/color_theme.dart';
import 'package:amal/service/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.controller, this.hint, this.onChanged, this.prefixIcon});
  final TextEditingController? controller;
  final String? hint;
  final Function(String)? onChanged;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    AppTheme.isDark = Theme.of(context).brightness == Brightness.dark;
    ColorThemeExtension colors =
        Theme.of(context).extension<ColorThemeExtension>()!;
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hint,
          fillColor: colors.textFieldBg,
          filled: true,
          border: InputBorder.none,
          // focusedBorder: OutlineInputBorder(
          //     borderSide:
          //         BorderSide(color: Colors.white.withOpacity(.2), width: 1)),
          prefixIcon: Icon(prefixIcon),
          prefixIconColor: AppTheme.isDark
              ? Colors.white.withOpacity(.6)
              : AppColors.primaryBlue),
    );
  }
}
