import '../utils/logger.dart';

class AppException implements Exception {
  AppException({
    this.title,
    this.detail,
  });

  factory AppException.handelException(Exception exception) {
    logger.e(exception);
    return AppException(title: 'エラーが発生しました。', detail: '時間をおいて再度お試してください。');
  }

  factory AppException.general(Exception exception) =>
      AppException.handelException(exception);

  final String? title;
  final String? detail;

  @override
  String toString() => '${title ?? ''}${detail != null ? ', $detail' : ''}';
}
