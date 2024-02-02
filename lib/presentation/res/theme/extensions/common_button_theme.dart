import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'common_button_theme.tailor.dart';

@TailorMixin()
class CommonButtonTheme extends ThemeExtension<CommonButtonTheme>
    with _$CommonButtonThemeTailorMixin {
  const CommonButtonTheme({required this.background});
  @override
  final Color background;
}
