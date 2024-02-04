import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/remote/repositories/post_repository.dart';
import '../../../domain/entities/post/post.dart';
import '../../../domain/repository_interfaces/i_post_repository.dart';
import '../execute_safely.dart';

part 'fetch_posts_usecase.g.dart';

@riverpod
FetchPostsUsecase fetchPostsUsecase(FetchPostsUsecaseRef ref) =>
    FetchPostsUsecase(ref.watch(postRepositoryProvider));

class FetchPostsUsecase {
  const FetchPostsUsecase(this._postRepository);

  final IPostRepository _postRepository;

  Future<List<Post>> execute() async =>
      executeSafely(_postRepository.fetchPosts);
}
