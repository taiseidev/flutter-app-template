import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nost/core/const/navigation.dart';
import 'package:nost/core/navigation/router/router.dart';
import 'package:nost/core/navigation/routes/branches/community_branch.dart';
import 'package:nost/core/navigation/routes/branches/home_branch.dart';
import 'package:nost/core/navigation/routes/branches/my_page_branch.dart';
import 'package:nost/core/navigation/routes/branches/search_branch.dart';
import 'package:nost/core/navigation/routes/branches/store_branch.dart';

part 'main_route.g.dart';

@TypedGoRoute<PolicyRoute>(
  path: PolicyRouteConst.policyRoutePath,
)
class PolicyRoute extends GoRouteData {
  const PolicyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SizedBox.shrink();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
}

@TypedGoRoute<ContactRoute>(
  path: ContactRouteConst.contactRoutePath,
)
class ContactRoute extends GoRouteData {
  const ContactRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SizedBox.shrink();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
}

@TypedStatefulShellRoute<MainRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    homeStatefulShellBranch,
    searchStatefulShellBranch,
    communityStatefulShellBranch,
    storeStatefulShellBranch,
    myPageStatefulShellBranch,
  ],
)
final class MainRoute extends StatefulShellRouteData {
  const MainRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ScaffoldWithNaviBar(
      navigationShell: navigationShell,
    );
  }

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  static const String $restorationScopeId = 'mainRouteRestorationScopeId';
}

final class ScaffoldWithNaviBar extends StatelessWidget {
  const ScaffoldWithNaviBar({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '探す'),
          BottomNavigationBarItem(icon: Icon(Icons.co2), label: 'コミュニティ'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'ストア'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'マイページ',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
