import 'dart:math';

import 'package:intl/intl.dart';

extension DoubleExtension on double {
  // 小数点以下を指定した桁数で四捨五入
  double roundTo(int places) {
    final mod = pow(10.0, places);
    return (this * mod).round().toDouble() / mod;
  }

  // 数値を通貨形式にフォーマットする（例：1,234.56）
  String toCurrency({String locale = 'en_US', int decimalPlaces = 2}) {
    final format = NumberFormat.currency(
      locale: locale,
      symbol: '',
      decimalDigits: decimalPlaces,
    );
    return format.format(this);
  }

  // 数値が正かどうかを判定
  bool get isPositive => this > 0;

  // 数値が負かどうかを判定
  bool get isNegative => this < 0;

  // 数値をパーセンテージ形式にフォーマットする（例：50%）
  String toPercentage({int decimalPlaces = 0}) {
    final formatted = (this * 100).toStringAsFixed(decimalPlaces);
    return '$formatted%';
  }

  // 数値を角度からラジアンに変換
  double get toRadians => this * (pi / 180);

  // 数値をラジアンから角度に変換
  double get toDegrees => this * (180 / pi);
}
