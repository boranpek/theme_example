import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:theme_example/app_theme.dart';

part './theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeData: appThemeData[AppTheme.GreenDark]));

  void changeTheme(ThemeData themeData) {
    emit(ThemeState(themeData: state.themeData = themeData));
  }
}
