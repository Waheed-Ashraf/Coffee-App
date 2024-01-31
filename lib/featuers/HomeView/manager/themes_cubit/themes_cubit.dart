import 'package:bloc/bloc.dart';
import 'package:coffee/core/theme/dark_light_themes.dart';
import 'package:flutter/material.dart';

part 'themes_state.dart';

class ThemesCubit extends Cubit<ThemesState> {
  ThemesCubit() : super(ThemesState(theme: lightTheme));

  void toggleTheme() {
    if (state.theme == lightTheme) {
      final updateState = ThemesState(theme: darkTheme);
      emit(updateState);
    } else {
      final updateState = ThemesState(theme: lightTheme);
      emit(updateState);
    }
  }
}
