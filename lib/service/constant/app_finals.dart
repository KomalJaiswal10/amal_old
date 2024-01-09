import 'package:amal/service/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppFinals {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
  static final BuildContext context = navState.currentContext!;
  static final themeState = context.watch<ThemeCubit>().state;
}
