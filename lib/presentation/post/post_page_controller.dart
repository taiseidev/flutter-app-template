import 'package:flutter_app_template/application/usecases/post/fetch_posts_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/post/post.dart';

part 'post_page_controller.g.dart';

@riverpod
class PostPageController extends _$PostPageController {
  @override
  Future<List<Post>> build() async =>
      await ref.read(fetchPostsUsecaseProvider).execute();
}
