import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nost/core/const/navigation.dart';
import 'package:nost/core/navigation/routes/main/main_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'rootNavigator');

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) => GoRouter(
      routes: $appRoutes,
      debugLogDiagnostics: true,
      initialLocation: MainRouteConst.homeRoutePath,
      navigatorKey: rootNavigatorKey,
    );
