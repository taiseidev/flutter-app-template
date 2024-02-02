import 'package:flutter_app_template/data/models/request/post_detail_request.dart';
import 'package:flutter_app_template/data/remote/api/post_api_client.dart';
import 'package:flutter_app_template/domain/repository_interfaces/i_post_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/post/post.dart';

part 'post_repository.g.dart';

@Riverpod(keepAlive: true)
PostRepository postRepository(PostRepositoryRef ref) =>
    PostRepository(ref.watch(postApiClientProvider));

final class PostRepository extends IPostRepository {
  PostRepository(this._apiClient);
  final PostApiClient _apiClient;

  @override
  Future<List<Post>> fetchPosts() async {
    final response = await _apiClient.fetchPosts();
    return response
        .map(
          (e) => Post(
            userId: e.userId,
            id: e.id,
            title: e.title,
            body: e.body,
          ),
        )
        .toList();
  }

  @override
  Future<Post> fetchPostDetail(final int id) async {
    // ここでリクエストオブジェクトに変換しているのは冗長だが、
    // Requestオブジェクトを実装する際のイメージとして追加
    final request = PostDetailRequest(id: id);
    final response = await _apiClient.fetchPostDetail(request.id.toString());
    return Post(
      userId: response.userId,
      id: response.id,
      title: response.title,
      body: response.body,
    );
  }
}