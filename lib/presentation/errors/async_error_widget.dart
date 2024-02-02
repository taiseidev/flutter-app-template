import 'package:flutter/material.dart';
import 'package:flutter_app_template/exceptions/app_exception.dart';

/// 非同期処理失敗時に表示するエラーWidget
///
/// 本アプリでは[GET]のみ実行するProviderの戻り値をAsyncValueの拡張機能である
/// [handleAsyncValue]で処理している。もしこのProviderの戻り値がAsyncErrorの場合は
/// このWidgetを表示させる。
class AsyncErrorWidget extends StatelessWidget {
  const AsyncErrorWidget({
    super.key,
    required this.exception,
  });

  final AppException exception;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(exception.title ?? ''),
      content: Text(exception.detail ?? ''),
    );
  }
}
