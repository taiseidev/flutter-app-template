// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
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
        stringArg: state.uri.queryParameters['string-arg'],
        intArg:
            _$convertMapValue('int-arg', state.uri.queryParameters, int.parse),
        doubleArg: _$convertMapValue(
            'double-arg', state.uri.queryParameters, double.parse),
        boolArg: _$convertMapValue(
            'bool-arg', state.uri.queryParameters, _$boolConverter),
        enumArg: _$convertMapValue('enum-arg', state.uri.queryParameters,
            _$SampleEnumEnumMap._$fromName),
        stringArg2: state.uri.queryParameters['string-arg2']!,
        $extra: state.extra as CustomClassForGoRouterSample?,
      );

  String get location => GoRouteData.$location(
        '/second-go-router-sample/third-go-router-sample',
        queryParams: {
          if (stringArg != null) 'string-arg': stringArg,
          if (intArg != null) 'int-arg': intArg!.toString(),
          if (doubleArg != null) 'double-arg': doubleArg!.toString(),
          if (boolArg != null) 'bool-arg': boolArg!.toString(),
          if (enumArg != null) 'enum-arg': _$SampleEnumEnumMap[enumArg!],
          'string-arg2': stringArg2,
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

String _$goRouterHash() => r'87b2f1059ac041e9ae8151d042068f6c0ba4fc24';

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
