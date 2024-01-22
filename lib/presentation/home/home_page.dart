import 'package:flutter/material.dart';
import 'package:flutter_app_template/extensions/async_value_extension.dart';
import 'package:flutter_app_template/extensions/multi_async_value_extension.dart';
import 'package:flutter_app_template/extensions/widget_ref_extension.dart';
import 'package:flutter_app_template/presentation/home/home_controller.dart';
import 'package:flutter_app_template/providers/home/get_sample_int_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(getSampleIntProvider);
    final asyncValue2 = ref.watch(getSampleInt2Provider);

    ref.handleAsyncValue<void>(
      homeControllerProvider,
      completeMessage: '非同期処理が完了しました！',
      complete: (context, _) async {
        debugPrint('完了');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: MultiAsyncValue.group2(asyncValue, asyncValue2)
            .handleAsyncValue((value) {
          final value1 = value.$1;
          final value2 = value.$2;
          return Text((value1 + value2).toString());
        }),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          asyncValue.handleAsyncValue(
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
        ],
      ),
    );
  }
}