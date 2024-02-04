import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'secure_storage_instance.dart';

enum StorageKeyType {
  userId,
}

class SecureStorageValues {
  SecureStorageValues({this.userId});

  factory SecureStorageValues.fromMap(Map<String, String> map) =>
      SecureStorageValues(
        userId: map[StorageKeyType.userId.name],
      );
  final String? userId;
}

extension StorageKeyTypeExt on StorageKeyType {
  FlutterSecureStorage get _storage => SecureStorageInstance().storage;

  String get keyString => switch (this) {
        StorageKeyType.userId => StorageKeyType.userId.name,
      };

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  Future<bool> setValue(String value) async {
    try {
      await _storage.write(key: keyString, value: value);
      return true;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<String?> getValue() async {
    try {
      return await _storage.read(
        key: keyString,
        aOptions: _getAndroidOptions(),
      );
    } on Exception catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<SecureStorageValues?> getAllValue() async {
    try {
      final result = await _storage.readAll(aOptions: _getAndroidOptions());
      return SecureStorageValues.fromMap(result);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<bool> deleteValue() async {
    try {
      await _storage.delete(
        key: keyString,
        aOptions: _getAndroidOptions(),
      );
      return true;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> deleteAllValue() async {
    try {
      await _storage.deleteAll(aOptions: _getAndroidOptions());
      return true;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
