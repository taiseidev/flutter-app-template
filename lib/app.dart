import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nost/core/i18n/strings.g.dart';
import 'package:nost/core/navigation/router/router.dart';
import 'package:nost/core/res/theme.dart';
import 'package:nost/core/utils/loading.dart';

final scaffoldMessengerKeyProvider = Provider(
  (_) => GlobalKey<ScaffoldMessengerState>(),
);

final class App extends ConsumerWidget {
  const App({super.key});

  static const appName = 'Nost';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final isLoading = ref.watch(loadingNotifierProvider);
    return MaterialApp.router(
      title: appName,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      locale: TranslationProvider.of(context).flutterLocale,
      // builder: DevicePreview.appBuilder,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      builder: (context, child) => Stack(
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
      ),
    );
  }
}
