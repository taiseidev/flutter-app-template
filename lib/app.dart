import 'package:flutter/material.dart';
import 'package:flutter_app_template/data/local/secure_storage/secure_storage_instance.dart';
import 'package:flutter_app_template/data/local/shared_preference/preference_key_type.dart';
import 'package:flutter_app_template/presentation/res/theme.dart';
import 'package:flutter_app_template/presentation/router/router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'providers/loading_notifier.dart';

final scaffoldMessengerKeyProvider = Provider(
  (_) => GlobalKey<ScaffoldMessengerState>(),
);

final navigatorKeyProvider = Provider(
  (_) => GlobalKey<NavigatorState>(),
);

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    useEffect(() {
      Future(
        () async {
          final isFirstLaunch =
              PreferenceKeyType.isFirstLaunch.getBool() ?? true;
          if (isFirstLaunch) {
            /// iOSだとkey-chainの影響でアプリを削除してもSecureStorageの値をが残るため、
            /// アプリ初回起動時は値を全て削除する
            await SecureStorageInstance().storage.deleteAll();
            await PreferenceKeyType.isFirstLaunch.setBool(value: false);
          }
        },
      );
      return null;
    }, const []);

    return MaterialApp.router(
      routerConfig: router,
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      theme: getLightThemeData(),
      darkTheme: getDarkThemeData(),
      builder: (context, child) {
        final isLoading = ref.watch(loadingNotifierProvider);
        return Stack(
          children: [
            child!,
            if (isLoading)
              const ColoredBox(
                color: Colors.black26,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        );
      },
    );
  }
}
