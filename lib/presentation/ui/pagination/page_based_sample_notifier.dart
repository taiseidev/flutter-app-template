import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'paging_async_notifier.dart';
import 'paging_data.dart';
import 'sample_item.dart';

part 'page_based_sample_notifier.g.dart';

final pageBasedSampleNotifierProvider = AsyncNotifierProvider.autoDispose<
    PageBasedSampleNotifier, PageBasedSampleState>(
  PageBasedSampleNotifier.new,
);

typedef PageBasedSampleState = PageBasedPagingData<PagingDataItem>;

class PageBasedSampleNotifier
    extends PageBasedPagingAsyncNotifier<PagingDataItem> {
  /// １ページ目の取得処理
  @override
  Future<PageBasedSampleState> build() async {
    final res = await ref.read(sampleRepositoryProvider).getByPage();
    ref.keepAlive();

    return PageBasedSampleState(
      items: res.items,
      page: 0,
      hasMore: res.hasMore,
    );
  }

  /// 2ページ目以降の取得処理
  /// エラーハンドリングなどはPageBasedPagingAsyncNotifier側でよしなに行われるので、ここでは取得処理のみを記述する
  @override
  Future<PageBasedSampleState> fetchNext(int page) async {
    final res =
        await ref.read(sampleRepositoryProvider).getByPage(page: page + 1);
    ref.keepAlive();

    return PageBasedSampleState(
      items: res.items,
      page: page + 1,
      hasMore: res.hasMore,
    );
  }
}

@Riverpod(keepAlive: true)
SampleRepository sampleRepository(SampleRepositoryRef ref) =>
    SampleRepository();

class SampleRepository {
  Future<PageBasedPagingData> getByPage({int? page}) async =>
      PageBasedPagingData(
        items: List.generate(
          1000,
          (index) => const SampleItem(
            id: 1,
            name: 'dkfsldkj',
          ),
        ),
        page: 1,
        hasMore: true,
      );
}
