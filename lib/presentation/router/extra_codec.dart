// Codec
import 'dart:convert';

import '../ui/go_router_sample/first_go_router_sample_page.dart';

class ExtraCodec extends Codec<Object?, Object?> {
  const ExtraCodec();

  @override
  Converter<Object?, Object?> get decoder => const _Decoder();

  @override
  Converter<Object?, Object?> get encoder => const _Encoder();
}

class _Decoder extends Converter<Object?, Object?> {
  const _Decoder();
  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }
    final objects = input as List<Object?>;
    // 各パラメーターの設定
    // パラメーターが増えるたびにswitch-caseを追加
    switch (objects[0]) {
      case 'CustomClassForGoRouterSample':
        return CustomClassForGoRouterSample(
          name: objects[1]! as String,
          index: objects[2]! as int,
        );
    }
    throw FormatException('Unable to parse input: $input.');
  }
}

class _Encoder extends Converter<Object?, Object?> {
  const _Encoder();
  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }
    // 各パラメーターの設定
    // パラメーターが増えるたびにswitch-caseを追加
    switch (input) {
      case CustomClassForGoRouterSample _:
        return [
          'CustomClassForGoRouterSample', // 各パラメーターの一意識別子
          input.name,
          input.index,
        ];
      default:
        throw FormatException('Cannot encode type ${input.runtimeType}.');
    }
  }
}
