import '../entities/post/post.dart';

abstract class IPostRepository {
  Future<List<Post>> fetchPosts();
}
