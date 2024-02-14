import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screen_protector/screen_protector.dart';

import 'app.dart';
import 'data/local/db/isar/isar_instance.dart';
import 'data/local/secure_storage/secure_storage_instance.dart';
import 'data/local/shared_preference/preference_key_type.dart';
import 'data/local/shared_preference/shared_preferences_instance.dart';
import 'data/models/request/memo/category.dart';
import 'data/models/request/memo/memo.dart';
import 'data/remote/api/comment_api_client.dart';
import 'data/remote/api/post_api_client.dart';
import 'data/remote/dio.dart';
import 'data/remote/repositories/comment/comment_repository.dart';
import 'data/remote/repositories/post/post_repository.dart';
import 'i18n/strings.g.dart';
import 'providers/api/i_comment_repository_provider.dart';
import 'providers/api/i_post_repository_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  debugRepaintRainbowEnabled = true;

  final isar = await _getIsarInstance();

  await Future.wait([
    SharedPreferencesInstance.initialize(),
    SecureStorageInstance.initialize(),
  ]);

  await setUp();

  // スクショした際の画像にぼかしを追加
  await ScreenProtector.protectDataLeakageWithBlur();

  // デバイスのロケールで初期化
  LocaleSettings.useDeviceLocale();

  final container = ProviderContainer();
  final dio = container.read(dioProvider);

  runApp(
    ProviderScope(
      overrides: _getOverrides(isar, dio),
      child: TranslationProvider(
        child: const App(),
      ),
    ),
  );
}

List<Override> _getOverrides(Isar isar, Dio dio) {
  // FIXME: ここでmockビルドの場合はRepositoryを差し替える
  return [
    isarProvider.overrideWithValue(isar),
    iCommentRepositoryProvider.overrideWithValue(
      CommentRepository(CommentApiClient(dio)),
    ),
    iPostRepositoryProvider
        .overrideWithValue(PostRepository(PostApiClient(dio))),
  ];
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

Future<Isar> _getIsarInstance() async {
  var path = '';
  if (!kIsWeb) {
    final dir = await getApplicationSupportDirectory();
    path = dir.path;
  }

  final isar = await Isar.open(
    [
      CategorySchema,
      MemoSchema,
    ],
    directory: path,
  );

  return isar;
}
