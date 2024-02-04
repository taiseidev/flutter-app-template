import 'package:flutter/material.dart';

import '../../../exceptions/app_exception.dart';
import '../../../extensions/async_value_extension.dart';

/// 非同期処理失敗時に表示するエラーWidget
///
/// 本アプリではGETのみ実行するProviderの戻り値をAsyncValueの拡張機能である[AsyncValueHandler]の
/// handleAsyncValueで処理している。もしこのProviderの戻り値がAsyncErrorの場合はこのWidgetを表示させる。
class AsyncErrorWidget extends StatelessWidget {
  const AsyncErrorWidget({
    required this.exception,
    super.key,
  });

  final AppException exception;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(exception.title ?? ''),
        Text(exception.detail ?? ''),
      ],
    );
  }
}
