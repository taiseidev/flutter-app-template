import '../entities/post/post.dart';

abstract class IPostRepository {
  Future<List<Post>> fetchPosts();
  Future<Post> fetchPostDetail(int id);
}
