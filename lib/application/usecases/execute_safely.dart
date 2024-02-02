import '../../exceptions/app_exception.dart';
import '../../utils/logger.dart';

Future<T> executeSafely<T>(Future<T> Function() operation) async {
  try {
    return await operation();
  } on Exception catch (e) {
    logger.e(e.toString());
    throw AppException.general(e);
  }
}
