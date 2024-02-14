import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/repository_interfaces/i_comment_repository.dart';

part 'i_comment_repository_provider.g.dart';

@Riverpod(keepAlive: true)
ICommentRepository iCommentRepository(ICommentRepositoryRef ref) =>
    throw UnimplementedError();
