import 'package:flutter/material.dart';
import 'package:flutter_app_template/application/services/image/image_picker_service.dart';
import 'package:flutter_app_template/extensions/async_value_extension.dart';
import 'package:flutter_app_template/extensions/widget_ref_extension.dart';
import 'package:flutter_app_template/presentation/home/home_controller.dart';
import 'package:flutter_app_template/providers/home/get_sample_int_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multi_async_value/multi_async_value.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(getSampleIntProvider);
    final asyncValue2 = ref.watch(getSampleInt2Provider);

    final isUnTappable = useState(false);

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: isUnTappable.value
                ? null
                : () async {
                    final result = await ImagePickerService.instance
                        .takePictureFromCamera();
                    print(result);
                  },
            child: const Text('カメラで取得'),
          ),
          ElevatedButton(
            onPressed: isUnTappable.value
                ? null
                : () async {
                    final result = await ImagePickerService.instance
                        .pickImageFromGallery();
                    print(result);
                  },
            child: const Text('ギャラリーから取得'),
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
    );
  }
}
