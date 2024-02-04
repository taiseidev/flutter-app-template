// ignore: unused_import, directives_ordering
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_data.freezed.dart';

/// PagingDataのitemの基底クラス
/// [id]を持つことを強制する
abstract class PagingDataItem {
  int get id;
}

/// 汎用ページングWidgetを使うための基底クラス
abstract class PagingData<T extends PagingDataItem> {
  List<T> get items;
  bool get hasMore;
}

@freezed
class PageBasedPagingData<T extends PagingDataItem>
    with _$PageBasedPagingData<T>
    implements PagingData<T> {
  const factory PageBasedPagingData({
    required List<T> items,
    required int page,
    required bool hasMore,
  }) = _PageBasedPagingData<T>;
  const PageBasedPagingData._();
}
