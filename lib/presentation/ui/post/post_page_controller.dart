import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../application/usecases/post/fetch_posts_usecase.dart';
import '../../../domain/entities/post/post.dart';

part 'post_page_controller.g.dart';

@riverpod
class PostPageController extends _$PostPageController {
  @override
  Future<List<Post>> build() async =>
      ref.read(fetchPostsUsecaseProvider).execute();
}
