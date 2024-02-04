// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'paging_data.dart';

part 'sample_item.freezed.dart';

/// PagingDataItemを実装したクラス
@freezed
class SampleItem with _$SampleItem implements PagingDataItem {
  const factory SampleItem({
    required int id,
    required String name,
  }) = _SampleItem;
}
