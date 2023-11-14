import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.controller, this.hint, this.onChanged});
  final TextEditingController? controller;
  final String? hint;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    print(AAppTheme.isDark);
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hint,
          fillColor: AAppTheme.isDark
              ? AAppColors.amalSecondaryBlack
              : AAppColors.whiteBg,
          filled: true,
          border: InputBorder.none),
    );
  }
}
