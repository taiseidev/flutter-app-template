import 'package:flutter_app_template/data/remote/api/comment_api_client.dart';
import 'package:flutter_app_template/domain/entities/comment/comment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/repository_interfaces/i_comment_repository.dart';

part 'comment_repository.g.dart';

@Riverpod(keepAlive: true)
CommentRepository commentRepository(CommentRepositoryRef ref) =>
    CommentRepository(ref.watch(commentApiClientProvider));

final class CommentRepository extends ICommentRepository {
  CommentRepository(this._apiClient);
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
