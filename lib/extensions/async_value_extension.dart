import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/errors/async_error_widget.dart';

extension AsyncValueHandler<T> on AsyncValue<T> {
  /// whenメソッドの拡張関数
  ///
  /// [GET]するProviderの戻り値をwhenでハンドリングする場合、毎回同じloadingとerrorを
  /// 書くのは冗長なので、Viewではdataのみを制御する
  Widget handleAsyncValue(Widget Function(T value) onData) {
    return when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (e, st) => const AsyncErrorWidget(),
      data: onData,
    );
  }
}
