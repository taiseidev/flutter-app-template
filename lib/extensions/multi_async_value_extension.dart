import 'package:flutter_riverpod/flutter_riverpod.dart';

extension MultiAsyncValue on AsyncValue {
  static AsyncValue<(T1, T2)> group2<T1, T2>(
      AsyncValue<T1> t1, AsyncValue<T2> t2) {
    if (t1 is AsyncLoading || t2 is AsyncLoading) {
      return const AsyncLoading();
    }

    try {
      return AsyncData((t1.value as T1, t2.value as T2));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
}
