import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  final String _jsonKey = "theme_mode";

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final String? result = json[_jsonKey];

    if (result == "light") {
      return ThemeMode.light;
    } else if (result == "dark") {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    if (state == ThemeMode.light) {
      return {_jsonKey: "light"};
    } else if (state == ThemeMode.dark) {
      return {_jsonKey: "dark"};
    } else {
      return {_jsonKey: "system"};
    }
  }

  void updateTheme(ThemeMode newMode) {
    emit(newMode);
  }
}
