import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  FutureOr<void> build() => null;

  Future<void> post() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await Future<void>.delayed(const Duration(seconds: 3));
    });
  }
}
