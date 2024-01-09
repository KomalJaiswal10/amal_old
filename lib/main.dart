import 'package:amal/service/constant/app_finals.dart';
import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/cubit/theme_cubit.dart';
import 'package:amal/service/cubit/theme_state.dart';
import 'package:amal/view/src/intro/splash.dart';
import 'package:amal/view/widgets/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => ThemeCubit())],
        child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Amal',
            theme: state.themeData,
            navigatorKey: AppFinals.navState,
            home: const SplashScreen(),
          );
        }));
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
