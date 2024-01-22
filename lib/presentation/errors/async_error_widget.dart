import 'package:flutter/material.dart';

/// 非同期処理失敗時に表示するエラーWidget
///
/// 本アプリでは[GET]のみ実行するProviderの戻り値をAsyncValueの拡張機能である
/// [handleAsyncValue]で処理している。もしこのProviderの戻り値がAsyncErrorの場合は
/// このWidgetを表示させる。
class AsyncErrorWidget extends StatelessWidget {
  const AsyncErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('エラーが発生しました...👻');
  }
}
