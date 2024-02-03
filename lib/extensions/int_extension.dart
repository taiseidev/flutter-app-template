import 'dart:math';

import 'package:intl/intl.dart';

extension IntExtension on int {
  // 数値を通貨形式にフォーマットする（例：1,234）
  String toCurrency({int decimalPlaces = 0, String locale = 'en_US'}) {
    final format = NumberFormat.currency(
      locale: locale,
      symbol: '',
      decimalDigits: decimalPlaces,
    );
    return format.format(this);
  }

  // 数値を時間形式にフォーマットする（例：02:30 for 150 minutes）
  String toHoursMinutes() {
    final hours = this ~/ 60;
    final minutes = this % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }

  // 数値が奇数かどうかを判定
  bool get isOdd => this % 2 != 0;

  // 数値を単位付きで表現する（例：1K, 1M, 1B）
  String toAbbreviated() {
    if (this >= 1000000000) {
      return '${(this / 1000000000).toStringAsFixed(1)}B';
    } else if (this >= 1000000) {
      return '${(this / 1000000).toStringAsFixed(1)}M';
    } else if (this >= 1000) {
      return '${(this / 1000).toStringAsFixed(1)}K';
    } else {
      return toString();
    }
  }

  // 数値を角度からラジアンに変換
  double get toRadians => this * (pi / 180);

  // 数値をラジアンから角度に変換
  double get toDegrees => this * (180 / pi);
}
