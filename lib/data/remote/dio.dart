import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'constants/api_endpoints.dart';

part 'dio.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final dio = Dio();

  dio.options.baseUrl = _getBaseUrl();

  return dio;
}

String _getBaseUrl() {
  // TODO: baseUrlはここで切り替える
  return ApiEndpoints.baseUrl;
}
