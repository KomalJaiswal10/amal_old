import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.controller, this.hint, this.onChanged, this.suffixicon});
  final TextEditingController? controller;
  final String? hint;
  final Function(String)? onChanged;
  final IconData? suffixicon;

  @override
  Widget build(BuildContext context) {
    AAppTheme.isDark = Theme.of(context).brightness == Brightness.dark;
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hint,
          fillColor: AAppTheme.isDark
              ? AAppColors.amalSecondaryBlack
              : AAppColors.whiteBg,
          filled: true,
          border: InputBorder.none,
          // contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.white.withOpacity(.2), width: 1)),
          prefixIcon: Icon(suffixicon),
          prefixIconColor: AAppTheme.isDark
              ? Colors.white.withOpacity(.4)
              : const Color(0xff177C88)),
    );
  }
}
