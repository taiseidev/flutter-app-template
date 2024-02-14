// ここにcommentのモックRepositoryを実装
import '../../../../domain/entities/comment/comment.dart';
import '../../../../domain/repository_interfaces/i_comment_repository.dart';
import '../../api/comment_api_client.dart';

final class MockCommentRepository extends ICommentRepository {
  MockCommentRepository(this._apiClient);
  final CommentApiClient _apiClient;

  @override
  Future<List<Comment>> fetchComments(int postId) async {
    final response = await _apiClient.fetchComments(postId.toString());
    return response
        .map(
          (e) => Comment(
            postId: e.postId,
            id: e.id,
            name: e.name,
            email: e.email,
            body: e.body,
          ),
        )
        .toList();
  }
}
