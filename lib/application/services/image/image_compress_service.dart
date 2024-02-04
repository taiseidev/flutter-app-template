import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class ImageCompressService {
  factory ImageCompressService() => _instance;
  const ImageCompressService._();

  static const _instance = ImageCompressService._();

  Future<Uint8List?> compressWithFile(
    String path, {
    int minWidth = 1920,
    int minHeight = 1080,
    int quality = 95,
  }) async {
    late Uint8List? byte;
    try {
      byte = await FlutterImageCompress.compressWithFile(
        path,
        minWidth: minWidth,
        minHeight: minHeight,
        quality: quality,
      );
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
    return byte;
  }
}
