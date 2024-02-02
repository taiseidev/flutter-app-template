import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_response.freezed.dart';
part 'comment_response.g.dart';

@freezed
class CommentResponse with _$CommentResponse {
  const factory CommentResponse({
    required int postId,
    required int id,
    required String name,
    required String email,
    required String body,
  }) = _CommentResponse;

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);
}
