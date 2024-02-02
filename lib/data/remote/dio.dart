import 'package:dio/dio.dart';
import 'package:flutter_app_template/data/remote/constants/api_endpoints.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final dio = Dio();

  dio.options.baseUrl = _getBaseUrl();

  return dio;
}

String _getBaseUrl() {
  // TODO(taisei): baseUrlはここで切り替える
  return ApiEndpoints.baseUrl;
}
