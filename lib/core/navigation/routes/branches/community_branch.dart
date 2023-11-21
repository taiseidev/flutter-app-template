import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nost/core/const/navigation.dart';

/// NavigatorKey
final communityNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'community');

const communityStatefulShellBranch = TypedStatefulShellBranch<CommunityBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<CommunityRoute>(
      path: MainRouteConst.communityRoutePath,
    ),
  ],
);

final class CommunityBranch extends StatefulShellBranchData {
  const CommunityBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = communityNavigatorKey;
  static const String $restorationScopeId = 'communityRestorationScopeId';
}

final class CommunityRoute extends GoRouteData {
  const CommunityRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CommunityPage();
}

final class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('コミュニティ画面'),
          ],
        ),
      ),
    );
  }
}
