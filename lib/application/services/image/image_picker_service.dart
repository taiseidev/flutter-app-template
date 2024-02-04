import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  ImagePickerService._();

  static final ImagePicker _picker = ImagePicker();

  static const int bytesPerMB = 1024 * 1024;

  static String imageSizeDebugMessage(double size, [int fractionDigits = 2]) =>
      '${size.toStringAsFixed(fractionDigits)} MB';

  static Future<XFile?> pickImageFromGallery() async =>
      _picker.pickImage(source: ImageSource.gallery);

  static Future<XFile?> takePictureFromCamera() async =>
      _picker.pickImage(source: ImageSource.camera);

  // 画像ファイルのサイズをメガバイト単位で取得するメソッド
  static Future<double> getImageSizeInMB(XFile file) async {
    // ファイルサイズをバイト単位で取得
    final bytes = await file.length();
    // バイトからメガバイトに変換
    return bytes / bytesPerMB;
  }

  // 画像ファイルのサイズをメガバイト単位で取得するメソッド
  static Future<double> getImageSizeInMBForByte(Uint8List byte) async {
    final data = Uint8List.fromList(byte);

    final bytes = data.lengthInBytes;

    return bytes / bytesPerMB;
  }
}
