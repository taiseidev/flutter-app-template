import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  // YYYY-MM-DD 形式
  String toYMD() => DateFormat('yyyy-MM-dd').format(this);

  // 日付の長い形式（例：2022年1月3日）
  String toLongDate() => DateFormat('y年M月d日').format(this);

  // 日付と時間（例：2022年1月3日 14:03）
  String toLongDateTime() => DateFormat('y年M月d日 H:mm').format(this);

  // 時間と分（HH:MM 形式）
  String toHourMinute() => DateFormat('HH:mm').format(this);

  // 曜日を含む日付（例：月曜日, 2022年1月3日）
  String toWeekdayLongDate() =>
      DateFormat('EEEE, y年M月d日', 'ja_JP').format(this);

  // 相対的な日付表現（例：昨日、今日、明日）
  String toRelativeDate() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final tomorrow = today.add(const Duration(days: 1));

    if (isAtSameMomentAs(today)) {
      return '今日';
    } else if (isAtSameMomentAs(yesterday)) {
      return '昨日';
    } else if (isAtSameMomentAs(tomorrow)) {
      return '明日';
    } else {
      return toLongDate();
    }
  }

  // 月と日（例：1月3日）
  String toMonthDay() => DateFormat('M月d日').format(this);
}
