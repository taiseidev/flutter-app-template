import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageInstance {
  factory SecureStorageInstance() => _instance;

  SecureStorageInstance._();
  static late final FlutterSecureStorage _storage;
  FlutterSecureStorage get storage => _storage;

  static final SecureStorageInstance _instance = SecureStorageInstance._();

  static Future<void> initialize() async {
    _storage = const FlutterSecureStorage();
  }
}
