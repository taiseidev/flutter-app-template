import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_app_template/application/services/image/image_compress_service.dart';
import 'package:flutter_app_template/application/services/image/image_picker_service.dart';
import 'package:flutter_app_template/extensions/async_value_extension.dart';
import 'package:flutter_app_template/extensions/widget_ref_extension.dart';
import 'package:flutter_app_template/presentation/home/home_controller.dart';
import 'package:flutter_app_template/providers/home/get_sample_int_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multi_async_value/multi_async_value.dart';
import 'package:path/path.dart' as p;

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

    final notCompressFile = useState<File?>(null);
    final compressFile = useState<Uint8List?>(null);

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
            ElevatedButton(
              onPressed: () async {
                final result = await ImagePickerService.takePictureFromCamera();

                if (result != null) {
                  final size =
                      await ImagePickerService.getImageSizeInMB(result);

                  notCompressFile.value = File(result.path);

                  debugPrint(ImagePickerService.imageSizeDebugMessage(size));

                  final filePath = result.path;
                  final ext = p.extension(filePath);
                  debugPrint('拡張子 $ext');

                  final byte = await ImageCompressService()
                      .compressWithFile(result.path);

                  if (byte != null) {
                    compressFile.value = byte;
                  }
                }
              },
              child: const Text('カメラで取得'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await ImagePickerService.pickImageFromGallery();
                if (result != null) {
                  notCompressFile.value = File(result.path);
                }
              },
              child: const Text('ギャラリーから取得'),
            ),
            if (notCompressFile.value != null)
              Image.file(notCompressFile.value!),
            if (compressFile.value != null) Image.memory(compressFile.value!),
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
