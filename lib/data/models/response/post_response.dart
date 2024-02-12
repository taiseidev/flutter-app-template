import 'package:freezed_annotation/freezed_annotation.dart';

import '/domain/entities/post/post.dart';

part 'post_response.freezed.dart';
part 'post_response.g.dart';

@freezed

/// `PostResponse`クラスは、APIから受け取った投稿データを表現します。
///
/// Repositoryで[Post]クラスに変換します。
class PostResponse with _$PostResponse {
  /// ファクトリコンストラクタは、`PostResponse`のインスタンスを生成します。
  ///
  /// [userId]は投稿を作成したユーザーのIDです。
  /// [id]は投稿の一意識別子です。
  /// [title]は投稿のタイトルです。
  /// [body]は投稿の本文です。
  const factory PostResponse({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PostResponse;

  /// `fromJson`メソッドは、JSONマップから`PostResponse`のインスタンスを生成します。
  ///
  /// このメソッドは、APIから受け取ったJSON形式のデータをDartのオブジェクトに変換する際に使用されます。
  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}
