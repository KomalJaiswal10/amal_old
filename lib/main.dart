import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/theme/theme.dart';
import 'package:amal/view/src/intro/splash.dart';
import 'package:amal/view/widgets/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    AppTheme.isDark = Theme.of(context).brightness == Brightness.dark;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amal',
      themeMode: ThemeMode.dark,
      theme: AppTheme.ligthTheme,
      darkTheme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          DateTime.now().dateWithMonth(),
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColors.primaryBlue),
        ),
      ),
    );
  }
}
