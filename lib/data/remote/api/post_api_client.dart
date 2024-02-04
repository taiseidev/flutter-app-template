import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/response/post_response.dart';
import '../constants/api_endpoints.dart';
import '../dio.dart';

part 'post_api_client.g.dart';

@Riverpod(keepAlive: true)
PostApiClient postApiClient(PostApiClientRef ref) =>
    PostApiClient(ref.watch(dioProvider));

@RestApi()
abstract class PostApiClient {
  factory PostApiClient(Dio dio) = _PostApiClient;

  @GET(ApiEndpoints.posts)
  Future<List<PostResponse>> fetchPosts();

  @GET(ApiEndpoints.postDetail)
  Future<PostResponse> fetchPostDetail(
    @Path() String id,
  );
}
