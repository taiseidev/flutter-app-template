import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_detail_request.freezed.dart';

@freezed
class PostDetailRequest with _$PostDetailRequest {
  const factory PostDetailRequest({
    required int id,
  }) = _PostDetailRequest;
}
