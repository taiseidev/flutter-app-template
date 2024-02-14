import '../../../../domain/entities/post/post.dart';
import '../../../../domain/repository_interfaces/i_post_repository.dart';
import '../../../models/request/post_detail_request.dart';
import '../../api/post_api_client.dart';

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
  Future<Post> fetchPostDetail(int id) async {
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
