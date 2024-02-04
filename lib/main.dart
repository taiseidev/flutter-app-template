import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screen_protector/screen_protector.dart';

import 'app.dart';
import 'data/local/secure_storage/secure_storage_instance.dart';
import 'data/local/shared_preference/preference_key_type.dart';
import 'data/local/shared_preference/shared_preferences_instance.dart';
import 'i18n/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  debugRepaintRainbowEnabled = true;

  await Future.wait([
    SharedPreferencesInstance.initialize(),
    SecureStorageInstance.initialize(),
  ]);

  await setUp();

  // スクショした際の画像にぼかしを追加
  await ScreenProtector.protectDataLeakageWithBlur();

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

Future<void> setUp() async {
  final isFirstLaunch = PreferenceKeyType.isFirstLaunch.getBool() ?? true;
  if (isFirstLaunch) {
    /// iOSだとkey-chainの影響でアプリを削除してもSecureStorageの値をが残るため、
    /// アプリ初回起動時は値を全て削除する
    await SecureStorageInstance().storage.deleteAll();
    await PreferenceKeyType.isFirstLaunch.setBool(value: false);
  }
}
