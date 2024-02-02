import 'package:flutter_app_template/data/remote/repositories/post_repository.dart';
import 'package:flutter_app_template/domain/repository_interfaces/i_post_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/post/post.dart';
import '../execute_safely.dart';

part 'fetch_posts_usecase.g.dart';

@riverpod
FetchPostsUsecase fetchPostsUsecase(FetchPostsUsecaseRef ref) =>
    FetchPostsUsecase(ref.watch(postRepositoryProvider));

class FetchPostsUsecase {
  const FetchPostsUsecase(this._postRepository);

  final IPostRepository _postRepository;

  Future<List<Post>> execute() async {
    return executeSafely(() => _postRepository.fetchPosts());
  }
}
