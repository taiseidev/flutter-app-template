import 'package:flutter/material.dart';
import 'package:flutter_app_template/extensions/async_value_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(sampleProvider);
    return Scaffold(
      body: asyncValue.handleAsyncValue(
        (value) => Center(
          child: Text(value.toString()),
        ),
      ),
    );
  }
}

final sampleProvider = FutureProvider<int>((ref) async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
});
