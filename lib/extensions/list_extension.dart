import 'dart:math';

extension ListExtension<T> on List<T> {
  // リストの中からランダムな要素を取得
  T? get randomElement => isEmpty ? null : this[Random().nextInt(length)];

  // リスト内の特定の条件を満たす最初の要素を取得（見つからない場合はnullを返す）
  T? firstWhereOrNull(bool Function(T element) test) {
    for (final element in this) {
      if (test(element)) {
        return element;
      }
    }
    return null;
  }

  // リストを指定した数のチャンクに分割
  List<List<T>> chunked(int size) {
    final chunks = <List<T>>[];
    for (var i = 0; i < length; i += size) {
      final end = (i + size < length) ? i + size : length;
      chunks.add(sublist(i, end));
    }
    return chunks;
  }

  // リストを指定した値でフィルタリング
  List<T> filteredBy(bool Function(T element) test) => where(test).toList();

  // リスト内のすべての要素に対して指定した関数を適用
  void apply(void Function(T element) action) {
    // ignore: prefer_foreach
    for (final element in this) {
      action(element);
    }
  }

  // リストがnullまたは空かどうかを判定
  bool get isNullOrEmpty => isEmpty;

  // リストがnullまたは空ではないかどうかを判定
  bool get isNotNullOrEmpty => !isNullOrEmpty;
}
