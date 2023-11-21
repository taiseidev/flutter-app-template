import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nost/core/const/navigation.dart';
import 'package:nost/core/extension/async_value_ext.dart';

/// NavigatorKey
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

const homeStatefulShellBranch = TypedStatefulShellBranch<HomeBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(
      path: MainRouteConst.homeRoutePath,
    ),
  ],
);

final class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
  static const String $restorationScopeId = 'homeRestorationScopeId';
}

final class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

final class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.handleAsyncValue<void>(
      testProvider,
      complete: (context, _) async {},
      completeMessage: '完了しました！',
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.invalidate(testProvider);
        },
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ホーム画面'),
          ],
        ),
      ),
    );
  }
}

final testProvider = FutureProvider<int>((ref) async {
  await Future<void>.delayed(const Duration(seconds: 3));
  return Future(() => 1);
});
