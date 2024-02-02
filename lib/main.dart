import 'package:flutter/material.dart';
import 'package:flutter_app_template/data/local/secure_storage/secure_storage_instance.dart';
import 'package:flutter_app_template/data/local/shared_preference/shared_preferences_instance.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'i18n/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Local Storageの初期化
  await SharedPreferencesInstance.initialize();
  await SecureStorageInstance.initialize();

  // デバイスのロケールで初期化
  LocaleSettings.useDeviceLocale();

  runApp(
    ProviderScope(
      child: TranslationProvider(
        child: const App(),
      ),
    ),
  );
}
