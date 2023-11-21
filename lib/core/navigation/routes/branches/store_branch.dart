import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nost/core/const/navigation.dart';

/// NavigatorKey
final storeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'store');

const storeStatefulShellBranch = TypedStatefulShellBranch<StoreBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<StoreRoute>(
      path: MainRouteConst.storeRoutePath,
    ),
  ],
);

final class StoreBranch extends StatefulShellBranchData {
  const StoreBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = storeNavigatorKey;
  static const String $restorationScopeId = 'storeRestorationScopeId';
}

final class StoreRoute extends GoRouteData {
  const StoreRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const StorePage();
}

final class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ストア画面'),
          ],
        ),
      ),
    );
  }
}
