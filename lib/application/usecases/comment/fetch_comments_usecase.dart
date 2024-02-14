import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/comment/comment.dart';
import '../../../domain/repository_interfaces/i_comment_repository.dart';
import '../../../providers/api/i_comment_repository_provider.dart';
import '../execute_safely.dart';

part 'fetch_comments_usecase.g.dart';

@riverpod
FetchCommentsUsecase fetchCommentsUsecase(FetchCommentsUsecaseRef ref) =>
    FetchCommentsUsecase(ref.watch(iCommentRepositoryProvider));

class FetchCommentsUsecase {
  const FetchCommentsUsecase(this._commentRepository);

  final ICommentRepository _commentRepository;

  Future<List<Comment>> execute(int postId) async =>
      executeSafely(() => _commentRepository.fetchComments(postId));
}
