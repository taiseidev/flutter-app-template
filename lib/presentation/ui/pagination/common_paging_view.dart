import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'async_value_extension.dart';
import 'paging_async_notifier.dart';
import 'paging_data.dart';

/// ページングのための汎用Widget
///
/// 主な機能
/// 1. データがある場合は、[contentBuilder]で作ったWidgetを表示する
/// 2. 1ページの読み込み中は、CircularProgressIndicatorを表示する
/// 3. 1ページ目のエラー時は、エラーWidgetを表示する
/// 4. エラー時にスナックバーでエラーを表示する
/// 5. 最後のアイテムが表示されたら、次のページを読み込む
/// 6. Pull to Refreshに対応する
class CommonPagingView<N extends PagingAsyncNotifier<D>,
    D extends PagingData<I>, I extends PagingDataItem> extends ConsumerWidget {
  const CommonPagingView({
    required this.provider,
    required this.contentBuilder,
    super.key,
  });

  /// [PagingAsyncNotifier]を実装したクラスのProviderを指定する
  final AutoDisposeAsyncNotifierProvider<N, D> provider;

  /// データがある場合に表示するWidgetを返す関数を指定する
  // ignore: comment_references
  /// [endItem]は最後に表示されたアイテムが表示されたことを検知するためのWidgetで、non nullの時にリストの最後に表示する
  final Widget Function(D data, Widget? endItem) contentBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // スナックバーによるエラー表示
    ref.listen(provider, (_, state) {
      state.showSnackbarOnError(context);
    });

    return ref.watch(provider).whenPlus(
          data: (data, hasError) => RefreshIndicator(
            onRefresh: () async => ref.refresh(provider.future),
            child: Scrollbar(
              child: contentBuilder(
                data,
                // 次のページがあり、かつエラーがない場合に、最後の要素に達したことを検知するためのWidgetを表示する
                data.hasMore && !hasError
                    ? _EndItem(
                        onScrollEnd: () async =>
                            ref.read(provider.notifier).loadNext(),
                      )
                    : null,
              ),
            ),
          ),
          // １ページ目のロード中
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          // １ページ目のエラー
          error: (e, st) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () => ref.read(provider.notifier).forceRefresh(),
                  icon: const Icon(Icons.refresh),
                ),
                Text(e.toString()),
              ],
            ),
          ),
          // 2ページ目以降のエラーでデータを優先する
          skipErrorOnHasValue: true,
        );
  }
}

class _EndItem extends StatelessWidget {
  const _EndItem({
    required this.onScrollEnd,
  });
  final VoidCallback onScrollEnd;

  @override
  Widget build(BuildContext context) => VisibilityDetector(
        key: key ?? const Key('EndItem'),
        onVisibilityChanged: (info) {
          if (info.visibleFraction > 0.1) {
            onScrollEnd();
          }
        },
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: CircularProgressIndicator(),
          ),
        ),
      );
}
