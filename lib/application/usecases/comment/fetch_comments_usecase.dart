import 'package:flutter_app_template/data/remote/repositories/comment_repository.dart';
import 'package:flutter_app_template/domain/entities/comment/comment.dart';
import 'package:flutter_app_template/domain/repository_interfaces/i_comment_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../execute_safely.dart';

part 'fetch_comments_usecase.g.dart';

@riverpod
FetchCommentsUsecase fetchCommentsUsecase(FetchCommentsUsecaseRef ref) =>
    FetchCommentsUsecase(ref.watch(commentRepositoryProvider));

class FetchCommentsUsecase {
  const FetchCommentsUsecase(this._commentRepository);

  final ICommentRepository _commentRepository;

  Future<List<Comment>> execute(int postId) async {
    return executeSafely(() => _commentRepository.fetchComments(postId));
  }
}
