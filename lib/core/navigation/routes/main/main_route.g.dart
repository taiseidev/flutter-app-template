// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $policyRoute,
      $contactRoute,
      $mainRoute,
    ];

RouteBase get $policyRoute => GoRouteData.$route(
      path: '/policy',
      parentNavigatorKey: PolicyRoute.$parentNavigatorKey,
      factory: $PolicyRouteExtension._fromState,
    );

extension $PolicyRouteExtension on PolicyRoute {
  static PolicyRoute _fromState(GoRouterState state) => const PolicyRoute();

  String get location => GoRouteData.$location(
        '/policy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $contactRoute => GoRouteData.$route(
      path: '/contact',
      parentNavigatorKey: ContactRoute.$parentNavigatorKey,
      factory: $ContactRouteExtension._fromState,
    );

extension $ContactRouteExtension on ContactRoute {
  static ContactRoute _fromState(GoRouterState state) => const ContactRoute();

  String get location => GoRouteData.$location(
        '/contact',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $mainRoute => StatefulShellRouteData.$route(
      parentNavigatorKey: MainRoute.$parentNavigatorKey,
      restorationScopeId: MainRoute.$restorationScopeId,
      factory: $MainRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          restorationScopeId: HomeBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SearchBranch.$navigatorKey,
          restorationScopeId: SearchBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/search',
              factory: $SearchRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: CommunityBranch.$navigatorKey,
          restorationScopeId: CommunityBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/community',
              factory: $CommunityRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: StoreBranch.$navigatorKey,
          restorationScopeId: StoreBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/store',
              factory: $StoreRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: MyPageBranch.$navigatorKey,
          restorationScopeId: MyPageBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/my_page',
              factory: $MyPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => const MainRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => const SearchRoute();

  String get location => GoRouteData.$location(
        '/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CommunityRouteExtension on CommunityRoute {
  static CommunityRoute _fromState(GoRouterState state) =>
      const CommunityRoute();

  String get location => GoRouteData.$location(
        '/community',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StoreRouteExtension on StoreRoute {
  static StoreRoute _fromState(GoRouterState state) => const StoreRoute();

  String get location => GoRouteData.$location(
        '/store',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyPageRouteExtension on MyPageRoute {
  static MyPageRoute _fromState(GoRouterState state) => const MyPageRoute();

  String get location => GoRouteData.$location(
        '/my_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
