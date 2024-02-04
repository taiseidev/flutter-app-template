// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $imageSampleRoute,
      $pageBasedViewRoute,
      $postSampleRoute,
      $firstGoRouterSampleRoute,
      $secondGoRouterSampleRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $imageSampleRoute => GoRouteData.$route(
      path: '/image-sample',
      factory: $ImageSampleRouteExtension._fromState,
    );

extension $ImageSampleRouteExtension on ImageSampleRoute {
  static ImageSampleRoute _fromState(GoRouterState state) =>
      const ImageSampleRoute();

  String get location => GoRouteData.$location(
        '/image-sample',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $pageBasedViewRoute => GoRouteData.$route(
      path: '/page-based-view',
      factory: $PageBasedViewRouteExtension._fromState,
    );

extension $PageBasedViewRouteExtension on PageBasedViewRoute {
  static PageBasedViewRoute _fromState(GoRouterState state) =>
      const PageBasedViewRoute();

  String get location => GoRouteData.$location(
        '/page-based-view',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $postSampleRoute => GoRouteData.$route(
      path: '/post-sample',
      factory: $PostSampleRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'post-detail-sample',
          factory: $PostDetailSampleRouteExtension._fromState,
        ),
      ],
    );

extension $PostSampleRouteExtension on PostSampleRoute {
  static PostSampleRoute _fromState(GoRouterState state) =>
      const PostSampleRoute();

  String get location => GoRouteData.$location(
        '/post-sample',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PostDetailSampleRouteExtension on PostDetailSampleRoute {
  static PostDetailSampleRoute _fromState(GoRouterState state) =>
      PostDetailSampleRoute(
        postId: int.parse(state.uri.queryParameters['post-id']!),
      );

  String get location => GoRouteData.$location(
        '/post-sample/post-detail-sample',
        queryParams: {
          'post-id': postId.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $firstGoRouterSampleRoute => GoRouteData.$route(
      path: '/first-go-router-sample',
      factory: $FirstGoRouterSampleRouteExtension._fromState,
    );

extension $FirstGoRouterSampleRouteExtension on FirstGoRouterSampleRoute {
  static FirstGoRouterSampleRoute _fromState(GoRouterState state) =>
      const FirstGoRouterSampleRoute();

  String get location => GoRouteData.$location(
        '/first-go-router-sample',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondGoRouterSampleRoute => GoRouteData.$route(
      path: '/second-go-router-sample',
      factory: $SecondGoRouterSampleRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'third-go-router-sample',
          factory: $ThirdGoRouterSampleRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'fourth-go-router-sample',
              factory: $FourthGoRouterSampleRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $SecondGoRouterSampleRouteExtension on SecondGoRouterSampleRoute {
  static SecondGoRouterSampleRoute _fromState(GoRouterState state) =>
      SecondGoRouterSampleRoute(
        stringArg: state.uri.queryParameters['string-arg']!,
        intArg: int.parse(state.uri.queryParameters['int-arg']!),
        doubleArg: double.parse(state.uri.queryParameters['double-arg']!),
        boolArg: _$boolConverter(state.uri.queryParameters['bool-arg']!),
        enumArg: _$SampleEnumEnumMap
            ._$fromName(state.uri.queryParameters['enum-arg']!),
        $extra: state.extra as CustomClassForGoRouterSample,
      );

  String get location => GoRouteData.$location(
        '/second-go-router-sample',
        queryParams: {
          'string-arg': stringArg,
          'int-arg': intArg.toString(),
          'double-arg': doubleArg.toString(),
          'bool-arg': boolArg.toString(),
          'enum-arg': _$SampleEnumEnumMap[enumArg],
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

const _$SampleEnumEnumMap = {
  SampleEnum.enum1: 'enum1',
  SampleEnum.enum2: 'enum2',
};

extension $ThirdGoRouterSampleRouteExtension on ThirdGoRouterSampleRoute {
  static ThirdGoRouterSampleRoute _fromState(GoRouterState state) =>
      ThirdGoRouterSampleRoute(
        stringArg2: state.uri.queryParameters['string-arg2']!,
        stringArg: state.uri.queryParameters['string-arg'],
        intArg:
            _$convertMapValue('int-arg', state.uri.queryParameters, int.parse),
        doubleArg: _$convertMapValue(
            'double-arg', state.uri.queryParameters, double.parse),
        boolArg: _$convertMapValue(
            'bool-arg', state.uri.queryParameters, _$boolConverter),
        enumArg: _$convertMapValue('enum-arg', state.uri.queryParameters,
            _$SampleEnumEnumMap._$fromName),
        $extra: state.extra as CustomClassForGoRouterSample?,
      );

  String get location => GoRouteData.$location(
        '/second-go-router-sample/third-go-router-sample',
        queryParams: {
          'string-arg2': stringArg2,
          if (stringArg != null) 'string-arg': stringArg,
          if (intArg != null) 'int-arg': intArg!.toString(),
          if (doubleArg != null) 'double-arg': doubleArg!.toString(),
          if (boolArg != null) 'bool-arg': boolArg!.toString(),
          if (enumArg != null) 'enum-arg': _$SampleEnumEnumMap[enumArg!],
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $FourthGoRouterSampleRouteExtension on FourthGoRouterSampleRoute {
  static FourthGoRouterSampleRoute _fromState(GoRouterState state) =>
      FourthGoRouterSampleRoute(
        stringArg: state.uri.queryParameters['string-arg'],
        intArg:
            _$convertMapValue('int-arg', state.uri.queryParameters, int.parse),
        doubleArg: _$convertMapValue(
            'double-arg', state.uri.queryParameters, double.parse),
        boolArg: _$convertMapValue(
            'bool-arg', state.uri.queryParameters, _$boolConverter),
        enumArg: _$convertMapValue('enum-arg', state.uri.queryParameters,
            _$SampleEnumEnumMap._$fromName),
        stringArg2: state.uri.queryParameters['string-arg2'],
        $extra: state.extra as CustomClassForGoRouterSample?,
      );

  String get location => GoRouteData.$location(
        '/second-go-router-sample/third-go-router-sample/fourth-go-router-sample',
        queryParams: {
          if (stringArg != null) 'string-arg': stringArg,
          if (intArg != null) 'int-arg': intArg!.toString(),
          if (doubleArg != null) 'double-arg': doubleArg!.toString(),
          if (boolArg != null) 'bool-arg': boolArg!.toString(),
          if (enumArg != null) 'enum-arg': _$SampleEnumEnumMap[enumArg!],
          if (stringArg2 != null) 'string-arg2': stringArg2,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'4f5e2f11e6b6779bbb12a92b0392102966853cd1';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = Provider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoRouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
