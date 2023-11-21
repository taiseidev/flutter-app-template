import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nost/core/const/navigation.dart';

/// NavigatorKey
final searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'search');

const searchStatefulShellBranch = TypedStatefulShellBranch<SearchBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SearchRoute>(
      path: MainRouteConst.searchRoutePath,
    ),
  ],
);

final class SearchBranch extends StatefulShellBranchData {
  const SearchBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = searchNavigatorKey;
  static const String $restorationScopeId = 'searchRestorationScopeId';
}

final class SearchRoute extends GoRouteData {
  const SearchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SearchPage();
}

final class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('探す画面'),
          ],
        ),
      ),
    );
  }
}
