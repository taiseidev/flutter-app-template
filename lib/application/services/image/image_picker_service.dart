import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  ImagePickerService._();

  static final _instance = ImagePickerService._();

  static ImagePickerService get instance => _instance;

  final ImagePicker _picker = ImagePicker();

  Future<XFile?> pickImageFromGallery() async {
    return await _picker.pickImage(source: ImageSource.gallery);
  }

  Future<XFile?> takePictureFromCamera() async {
    return await _picker.pickImage(source: ImageSource.camera);
  }
}
