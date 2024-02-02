import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_sample_int_provider.g.dart';

@riverpod
Future<int> getSampleInt(GetSampleIntRef ref) async {
  await Future<void>.delayed(const Duration(seconds: 3));
  return 1;
}

@riverpod
Future<int> getSampleInt2(GetSampleIntRef ref) async {
  await Future<void>.delayed(const Duration(seconds: 6));
  return 2;
}
