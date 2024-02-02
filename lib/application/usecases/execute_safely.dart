import 'package:flutter/material.dart';

import '../../exceptions/app_exception.dart';

Future<T> executeSafely<T>(Future<T> Function() operation) async {
  try {
    return await operation();
  } on Exception catch (e) {
    debugPrint(e.toString());
    throw AppException.general(e);
  }
}
