import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/remote/repositories/post_repository.dart';
import '../../../domain/entities/post/post.dart';
import '../../../domain/repository_interfaces/i_post_repository.dart';
import '../execute_safely.dart';

part 'fetch_post_detail_usecase.g.dart';

@riverpod
FetchPostDetailUsecase fetchPostDetailUsecase(FetchPostDetailUsecaseRef ref) =>
    FetchPostDetailUsecase(ref.watch(postRepositoryProvider));

class FetchPostDetailUsecase {
  const FetchPostDetailUsecase(this._postRepository);

  final IPostRepository _postRepository;

  Future<Post> execute(int postId) async =>
      executeSafely(() => _postRepository.fetchPostDetail(postId));
}
