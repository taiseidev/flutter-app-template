import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  /// MediaQuery
  double get deviceWidth => MediaQuery.sizeOf(this).width;
  double get deviceHeight => MediaQuery.sizeOf(this).height;
  double get viewInsetsBottom => MediaQuery.viewInsetsOf(this).bottom;
  double get appBarHeight => MediaQuery.paddingOf(this).top + kToolbarHeight;
  Orientation get orientation => MediaQuery.orientationOf(this);

  /// OS
  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;
  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;

  /// Theme
  bool get isDark => MediaQuery.platformBrightnessOf(this) == Brightness.dark;
}
