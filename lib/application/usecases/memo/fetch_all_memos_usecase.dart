// import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../../../data/remote/repositories/comment_repository.dart';
// import '../../../domain/entities/comment/comment.dart';
// import '../../../domain/repository_interfaces/i_comment_repository.dart';
// import '../../../domain/repository_interfaces/local/i_memo_repository.dart';
// import '../execute_safely.dart';

// part 'fetch_all_memos_usecase.g.dart';

// @riverpod
// FetchAllMemosUsecase fetchAllMemosUsecase(FetchAllMemosUsecaseRef ref) =>
//     FetchAllMemosUsecase(ref.watch(commentRepositoryProvider));

// class FetchAllMemosUsecase {
//   const FetchAllMemosUsecase(this._iMemoRepository);

//   final IMemoRepository _iMemoRepository;

//   Future<List<Comment>> execute(int postId) async =>
//       executeSafely(() => _commentRepository.fetchComments(postId));
// }
