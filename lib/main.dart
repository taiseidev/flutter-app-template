import 'package:flutter/material.dart';
import 'package:flutter_app_template/data/local/secure_storage/secure_storage_instance.dart';
import 'package:flutter_app_template/data/local/shared_preference/shared_preferences_instance.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Local Storageの初期化
  SharedPreferencesInstance.initialize();
  SecureStorageInstance.initialize();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
