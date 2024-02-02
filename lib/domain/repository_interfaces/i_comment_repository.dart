import '../entities/comment/comment.dart';

abstract class ICommentRepository {
  Future<List<Comment>> fetchComments(int postId);
}
