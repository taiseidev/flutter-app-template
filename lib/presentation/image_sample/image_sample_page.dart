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
    final notCompressImage = useState<File?>(null);
    final compressedImage = useState<Uint8List?>(null);
    final notCompressImageSize = useState<double?>(null);
    final compressImageSize = useState<double?>(null);
    final imageQuality = useState<double>(1.0);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('画像に関する処理をまとめる画面'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('画質を変更'),
                  const SizedBox(width: 8),
                  Text((imageQuality.value * 100).floor().toString()),
                ],
              ),
              Slider(
                value: imageQuality.value,
                onChanged: (value) {
                  imageQuality.value = value;
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  // カメラで画像を取得
                  final result =
                      await ImagePickerService.takePictureFromCamera();

                  if (result != null) {
                    // 圧縮前の画像を追加
                    notCompressImage.value = File(result.path);

                    // バイトからメガバイトに変換
                    final size =
                        await ImagePickerService.getImageSizeInMB(result);

                    notCompressImageSize.value =
                        double.tryParse(size.toStringAsFixed(2));

                    // 画像を圧縮
                    final byte = await ImageCompressService().compressWithFile(
                      result.path,
                      quality: (imageQuality.value * 100).floor(),
                    );

                    if (byte != null) {
                      // 圧縮後の画像を追加
                      compressedImage.value = byte;

                      final compressedSize =
                          await ImagePickerService.getImageSizeInMBForByte(
                        byte,
                      );

                      compressImageSize.value =
                          double.tryParse(compressedSize.toStringAsFixed(2));
                    }

                    final filePath = result.path;
                    final ext = p.extension(filePath);
                    debugPrint('拡張子 $ext');
                  }
                },
                child: const Text('カメラで取得'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('圧縮前の画像'),
                  const SizedBox(width: 8),
                  Text('${notCompressImageSize.value} MB'),
                ],
              ),
              if (notCompressImage.value != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.file(
                    notCompressImage.value!,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('圧縮済みの画像'),
                  const SizedBox(width: 8),
                  Text('${compressImageSize.value} MB'),
                ],
              ),
              if (compressedImage.value != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.memory(
                    compressedImage.value!,
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
