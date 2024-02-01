import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:path/path.dart' as p;

import '../../application/services/image/image_compress_service.dart';
import '../../application/services/image/image_picker_service.dart';

class ImageSamplePage extends HookWidget {
  const ImageSamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final notCompressFile = useState<File?>(null);
    final compressFile = useState<Uint8List?>(null);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('画像に関するサンプルをこの画面に表示する'),
              ElevatedButton(
                onPressed: () async {
                  final result =
                      await ImagePickerService.takePictureFromCamera();

                  if (result != null) {
                    final size =
                        await ImagePickerService.getImageSizeInMB(result);

                    notCompressFile.value = File(result.path);

                    debugPrint(ImagePickerService.imageSizeDebugMessage(size));

                    final filePath = result.path;
                    final ext = p.extension(filePath);
                    debugPrint('拡張子 $ext');

                    final byte = await ImageCompressService()
                        .compressWithFile(result.path, quality: 70);

                    if (byte != null) {
                      compressFile.value = byte;
                    }
                  }
                },
                child: const Text('カメラで取得'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final result =
                      await ImagePickerService.pickImageFromGallery();
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
                      final compressFileSize =
                          await ImagePickerService.getImageSizeInMBForByte(
                        byte,
                      );
                      debugPrint(compressFileSize.toString());
                      debugPrint(
                        ImagePickerService.imageSizeDebugMessage(
                          compressFileSize,
                        ),
                      );
                    }
                  }
                },
                child: const Text('ギャラリーから取得'),
              ),
              if (notCompressFile.value != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.file(
                    notCompressFile.value!,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              if (compressFile.value != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.memory(
                    compressFile.value!,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
