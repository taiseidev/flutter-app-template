import 'package:dio/dio.dart';
import 'package:flutter_app_template/data/models/response/comment_response.dart';
import 'package:flutter_app_template/data/remote/constants/api_endpoints.dart';
import 'package:flutter_app_template/data/remote/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_api_client.g.dart';

@Riverpod(keepAlive: true)
CommentApiClient commentApiClient(CommentApiClientRef ref) =>
    CommentApiClient(ref.watch(dioProvider));

@RestApi()
abstract class CommentApiClient {
  factory CommentApiClient(Dio dio) = _CommentApiClient;

  @GET(ApiEndpoints.comments)
  Future<List<CommentResponse>> fetchComments(
    @Path() String id,
  );
}
