import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nost/core/const/navigation.dart';

/// NavigatorKey
final myPageNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'my_page');

const myPageStatefulShellBranch = TypedStatefulShellBranch<MyPageBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<MyPageRoute>(
      path: MainRouteConst.myPageRoutePath,
    ),
  ],
);

final class MyPageBranch extends StatefulShellBranchData {
  const MyPageBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = myPageNavigatorKey;
  static const String $restorationScopeId = 'myPageRestorationScopeId';
}

final class MyPageRoute extends GoRouteData {
  const MyPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MyPage();
}

final class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('マイページ画面'),
          ],
        ),
      ),
    );
  }
}
