import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'async_value_extension.dart';
import 'paging_data.dart';

abstract class PagingAsyncNotifier<T extends PagingData>
    extends AutoDisposeAsyncNotifier<T> {
  Future<void> loadNext();

  // 状態を破棄して再読み込みする
  void forceRefresh() {
    state = AsyncLoading<T>();
    ref.invalidateSelf();
  }
}

/// PageBasedPagingを実装するためのNotifier
/// [build]と[fetchNext]をoverrideすることで、ローディングやエラーが勝手に処理される
abstract class PageBasedPagingAsyncNotifier<T extends PagingDataItem>
    extends PagingAsyncNotifier<PageBasedPagingData<T>> {
  /// 2ページ目以降のデータを取得するメソッド
  /// [PageBasedPagingAsyncNotifier]を継承したクラス内（もっと言えば[loadNext]）からしか呼ばない想定
  Future<PageBasedPagingData<T>> fetchNext(int page);

  /// 2ページ目以降のデータを取得する
  /// 基本的にoverrideする必要はない
  @override
  Future<void> loadNext() async {
    // データがない時は何もしない
    final value = state.valueOrNull;
    if (value == null) {
      return;
    }
    // エラーがある時は何もしない
    if (state.hasError) {
      return;
    }

    if (value.hasMore) {
      state = AsyncLoading<PageBasedPagingData<T>>().copyWithPrevious(state);

      state = await state.guardPlus(
        () async {
          final next = await fetchNext(value.page + 1);

          return value.copyWith(
            items: [...value.items, ...next.items],
            page: value.page + 1,
            hasMore: next.hasMore,
          );
        },
      );
    }
  }
}
