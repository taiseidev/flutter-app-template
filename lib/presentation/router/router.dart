import 'package:flutter/material.dart';
import 'package:flutter_app_template/presentation/go_router_sample/first_go_router_sample_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../go_router_sample/fourth_go_router_sample_page.dart';
import '../go_router_sample/second_go_router_sample_page.dart';
import '../go_router_sample/third_go_router_sample_page.dart';
import '../home/home_page.dart';
import 'extra_codec.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) => GoRouter(
      extraCodec: const ExtraCodec(),
      debugLogDiagnostics: true,
      initialLocation: '/first-go-router-sample',
      routes: $appRoutes,
    );

@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

@TypedGoRoute<FirstGoRouterSampleRoute>(
  path: '/first-go-router-sample',
)
class FirstGoRouterSampleRoute extends GoRouteData {
  const FirstGoRouterSampleRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FirstGoRouterSamplePage();
}

@TypedGoRoute<SecondGoRouterSampleRoute>(
    path: '/second-go-router-sample',
    routes: [
      TypedGoRoute<ThirdGoRouterSampleRoute>(
          path: 'third-go-router-sample',
          routes: [
            TypedGoRoute<FourthGoRouterSampleRoute>(
              path: 'fourth-go-router-sample',
            )
          ])
    ])
class SecondGoRouterSampleRoute extends GoRouteData {
  const SecondGoRouterSampleRoute({
    required this.stringArg,
    required this.intArg,
    required this.doubleArg,
    required this.boolArg,
    required this.enumArg,
    required this.$extra,
  });

  /// プリミティブ型は直接渡すことが可能
  final String stringArg;
  final int intArg;
  final double doubleArg;
  final bool boolArg;
  final SampleEnum enumArg;

  /// カスタムクラスは$extraというプロパティ名をつけた上で渡す
  final CustomClassForGoRouterSample $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      SecondGoRouterSamplePage(
        stringArg: stringArg,
        intArg: intArg,
        doubleArg: doubleArg,
        boolArg: boolArg,
        enumArg: enumArg,
        customArg: $extra,
      );
}

class ThirdGoRouterSampleRoute extends GoRouteData {
  const ThirdGoRouterSampleRoute({
    this.stringArg,
    this.intArg,
    this.doubleArg,
    this.boolArg,
    this.enumArg,
    this.$extra,
    required this.stringArg2,
  });

  final String? stringArg;
  final int? intArg;
  final double? doubleArg;
  final bool? boolArg;
  final SampleEnum? enumArg;
  final CustomClassForGoRouterSample? $extra;

  // SecondPageにはない引数
  final String stringArg2;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ThirdGoRouterSamplePage(
        stringArg: stringArg ?? '',
        intArg: intArg ?? 0,
        doubleArg: doubleArg ?? 0.0,
        boolArg: boolArg ?? false,
        enumArg: enumArg ?? SampleEnum.enum2,
        customArg: $extra ??
            const CustomClassForGoRouterSample(
              name: '',
              index: 0,
            ),
        stringArg2: stringArg2,
      );
}

class FourthGoRouterSampleRoute extends GoRouteData {
  const FourthGoRouterSampleRoute(
      {this.stringArg,
      this.intArg,
      this.doubleArg,
      this.boolArg,
      this.enumArg,
      this.$extra,
      this.stringArg2});

  final String? stringArg;
  final int? intArg;
  final double? doubleArg;
  final bool? boolArg;
  final SampleEnum? enumArg;
  final CustomClassForGoRouterSample? $extra;

  final String? stringArg2;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      FourthGoRouterSamplePage(
        stringArg: stringArg ?? '',
        intArg: intArg ?? 0,
        doubleArg: doubleArg ?? 0.0,
        boolArg: boolArg ?? false,
        enumArg: enumArg ?? SampleEnum.enum2,
        customArg: $extra ??
            const CustomClassForGoRouterSample(
              name: '',
              index: 0,
            ),
        stringArg2: stringArg2 ?? '',
      );
}
