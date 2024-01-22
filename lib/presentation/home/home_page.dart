import 'package:flutter/material.dart';
import 'package:flutter_app_template/extensions/async_value_extension.dart';
import 'package:flutter_app_template/extensions/widget_ref_extension.dart';
import 'package:flutter_app_template/presentation/home/home_controller.dart';
import 'package:flutter_app_template/providers/home/get_sample_int_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(getSampleIntProvider);

    ref.handleAsyncValue<void>(
      homeControllerProvider,
      completeMessage: '非同期処理が完了しました！',
      complete: (context, _) async {
        debugPrint('完了');
      },
    );

    return Scaffold(
      body: asyncValue.handleAsyncValue(
        (value) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              ElevatedButton(
                onPressed: () =>
                    ref.read(homeControllerProvider.notifier).post(),
                child: const Text('POST'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
