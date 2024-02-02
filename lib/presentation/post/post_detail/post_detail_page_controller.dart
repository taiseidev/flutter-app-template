import 'package:flutter_app_template/application/usecases/post/fetch_post_detail_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/post/post.dart';

part 'post_detail_page_controller.g.dart';

@riverpod
Future<Post> postDetailPageController(
  PostDetailPageControllerRef ref,
  int postId,
) async {
  return await ref.read(fetchPostDetailUsecaseProvider).execute(postId);
}
