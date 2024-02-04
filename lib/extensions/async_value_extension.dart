import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/widget/loading/common_loading_widget.dart';

extension AsyncValueHandler<T> on AsyncValue<T> {
  /// whenメソッドの拡張関数
  ///
  /// GETするProviderの戻り値をwhenでハンドリングする場合、毎回同じloadingとerrorを
  /// 書くのは冗長なので、Viewではdataのみを制御する
  Widget handleAsyncValue(Widget Function(T value) onData) => when(
        loading: () => const CommonLoadingWidget(),
        error: (exception, __) => ErrorWidget(exception),
        data: onData,
      );
}
