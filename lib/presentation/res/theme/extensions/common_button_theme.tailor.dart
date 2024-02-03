// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'common_button_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$CommonButtonThemeTailorMixin on ThemeExtension<CommonButtonTheme> {
  Color get background;

  @override
  CommonButtonTheme copyWith({
    Color? background,
  }) {
    return CommonButtonTheme(
      background: background ?? this.background,
    );
  }

  @override
  CommonButtonTheme lerp(
      covariant ThemeExtension<CommonButtonTheme>? other, double t) {
    if (other is! CommonButtonTheme) return this as CommonButtonTheme;
    return CommonButtonTheme(
      background: Color.lerp(background, other.background, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommonButtonTheme &&
            const DeepCollectionEquality()
                .equals(background, other.background));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
    );
  }
}

extension CommonButtonThemeBuildContextProps on BuildContext {
  CommonButtonTheme get commonButtonTheme =>
      Theme.of(this).extension<CommonButtonTheme>()!;
  Color get background => commonButtonTheme.background;
}
