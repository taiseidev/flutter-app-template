import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multi_async_value/multi_async_value.dart';

import '../../../extensions/async_value_extension.dart';
import '../../../extensions/int_extension.dart';
import '../../../extensions/widget_ref_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../providers/home/get_sample_int_provider.dart';
import '../../res/strings.dart';
import '../../router/router.dart';
import '../../widget/button/common_button.dart';
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

    final notification = t.settings.notification;

    return Scaffold(
      appBar: AppBar(
        title: RepaintBoundary(
          child: MultiAsyncValue.group2(
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
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl:
                  'https://images.unsplash.com/photo-1502982720700-bfff97f2ecac?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              width: 200,
              height: 200,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Text(1000000.toCurrency()),
            Text(notification),
            Text(Strings.greetingWithName('テスト')),
            RepaintBoundary(
              child: CommonButton(
                text: 'テストボタン',
                onPressed: () {},
              ),
            ),
            RepaintBoundary(
              child: ElevatedButton(
                onPressed: () async =>
                    const ImageSampleRoute().push<void>(context),
                child: const Text('画像サンプル画面に遷移'),
              ),
            ),
            RepaintBoundary(
              child: ElevatedButton(
                onPressed: () => const PostSampleRoute().go(context),
                child: const Text('投稿一覧画面に遷移'),
              ),
            ),
            RepaintBoundary(
              child: ElevatedButton(
                onPressed: () => const PageBasedViewRoute().go(context),
                child: const Text('ページング画面'),
              ),
            ),
            asyncValue.handleAsyncValue(
              (value) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(value.toString()),
                    ElevatedButton(
                      onPressed: () async =>
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
