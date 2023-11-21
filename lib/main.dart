import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nost/app.dart';
import 'package:nost/core/i18n/strings.g.dart';
import 'package:nost/core/utils/flavor.dart';
import 'package:nost/core/utils/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 多言語対応の設定
  LocaleSettings.useDeviceLocale();

  // ログの設定
  NostLogger.config();

  logger.i('env: ${Flavor.environment}');

  await Supabase.initialize(
    url: Flavor.apiKey,
    anonKey: Flavor.projectUrl,
  );

  runApp(
    DevicePreview(
      builder: (context) => TranslationProvider(
        child: const ProviderScope(
          child: App(),
        ),
      ),
    ),
  );
}
