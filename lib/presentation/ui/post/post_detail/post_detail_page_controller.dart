import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../application/usecases/comment/fetch_comments_usecase.dart';
import '../../../../application/usecases/post/fetch_post_detail_usecase.dart';
import '../../../../domain/entities/comment/comment.dart';
import '../../../../domain/entities/post/post.dart';

part 'post_detail_page_controller.g.dart';

@riverpod
Future<(Post, List<Comment>)> postDetailPageController(
  PostDetailPageControllerRef ref,
  int postId,
) async {
  final post = await ref.read(fetchPostDetailUsecaseProvider).execute(postId);
  final comment = await ref.read(fetchCommentsUsecaseProvider).execute(postId);

  return (post, comment);
}
