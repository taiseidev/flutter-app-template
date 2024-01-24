import 'package:flutter/material.dart';
import 'package:flutter_app_template/presentation/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/loading_notifier.dart';

final scaffoldMessengerKeyProvider = Provider(
  (_) => GlobalKey<ScaffoldMessengerState>(),
);

final navigatorKeyProvider = Provider(
  (_) => GlobalKey<NavigatorState>(),
);

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: router,
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
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
