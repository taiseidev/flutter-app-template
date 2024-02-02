class ApiEndpoints {
  const ApiEndpoints._();

  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  // post
  static const String posts = '/posts';
  static const String postDetail = '$posts/{id}';

  // comment
  static const String comments = '$posts/{id}/comments';
}
