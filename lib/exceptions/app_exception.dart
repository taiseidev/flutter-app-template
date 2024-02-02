class AppException implements Exception {
  AppException({
    this.title,
    this.detail,
  });

  factory AppException.general(Exception exception) =>
      AppException(title: 'エラーが発生しました。', detail: '時間をおいて再度お試してください。');
  factory AppException.error(String title) => AppException(title: title);
  factory AppException.unknown() => AppException(title: '不明なエラーです');
  factory AppException.irregular() => AppException(title: 'イレギュラーエラーです');

  final String? title;
  final String? detail;

  @override
  String toString() => '${title ?? ''}${detail != null ? ', $detail' : ''}';
}
