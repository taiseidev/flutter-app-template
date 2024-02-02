import 'package:flutter/material.dart';

ThemeData getLightThemeData() {
  final base = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
  );
  return base.copyWith();
}

ThemeData getDarkThemeData() {
  final base = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
  );
  return base.copyWith();
}
