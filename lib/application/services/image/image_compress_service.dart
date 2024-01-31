import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class ImageCompressService {
  const ImageCompressService._();

  static const _instance = ImageCompressService._();

  factory ImageCompressService() {
    return _instance;
  }

  Future<Uint8List?> compressWithFile(String path) async {
    late Uint8List? byte;
    try {
      byte = await FlutterImageCompress.compressWithFile(
        path,
        minWidth: 1920,
        minHeight: 1080,
        quality: 80,
      );
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
    return byte;
  }
}
