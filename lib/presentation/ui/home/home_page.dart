import 'package:flutter/material.dart';
import 'package:flutter_app_template/extensions/async_value_extension.dart';
import 'package:flutter_app_template/extensions/widget_ref_extension.dart';
import 'package:flutter_app_template/presentation/router/router.dart';
import 'package:flutter_app_template/presentation/widget/button/common_button.dart';
import 'package:flutter_app_template/providers/home/get_sample_int_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multi_async_value/multi_async_value.dart';

import '../../res/strings.dart';
import 'home_controller.dart';

class HomePage extends HookConsumerWidget {
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
        title: MultiAsyncValue.group2(
          asyncValue,
          asyncValue2,
        ).handleAsyncValue(
          (value) {
            final value1 = value.$1;
            final value2 = value.$2;
            return Text((value1 + value2).toString());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Strings.greetingWithName('テスト')),
            CommonButton(
              text: 'テストボタン',
              onPressed: () {},
            ),
            ElevatedButton(
              onPressed: () => const ImageSampleRoute().go(context),
              child: const Text('画像サンプル画面に遷移'),
            ),
            ElevatedButton(
              onPressed: () => const PostSampleRoute().go(context),
              child: const Text('投稿一覧画面に遷移'),
            ),
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
      ),
    );
  }
}
