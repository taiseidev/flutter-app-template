import 'package:nost/core/env.dart';

enum FlavorType { dev, prod }

class Flavor {
  Flavor._();

  static const _key = 'flavor';
  static const _errorMessage = 'No support flavor';

  static FlavorType get environment {
    const flavor = String.fromEnvironment(_key);
    if (flavor == FlavorType.dev.name) {
      return FlavorType.dev;
    } else if (flavor == FlavorType.prod.name) {
      return FlavorType.prod;
    }
    throw AssertionError(_errorMessage);
  }

  static String get apiKey {
    const flavor = String.fromEnvironment(_key);
    if (flavor == FlavorType.dev.name) {
      return Env.devKey;
    } else if (flavor == FlavorType.prod.name) {
      return Env.prodKey;
    }
    throw AssertionError(_errorMessage);
  }

  static String get projectUrl {
    const flavor = String.fromEnvironment(_key);
    if (flavor == FlavorType.dev.name) {
      return Env.devUrl;
    } else if (flavor == FlavorType.prod.name) {
      return Env.prodUrl;
    }
    throw AssertionError(_errorMessage);
  }
}
