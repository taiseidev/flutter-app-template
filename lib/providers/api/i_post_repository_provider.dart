import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/repository_interfaces/i_post_repository.dart';

part 'i_post_repository_provider.g.dart';

@Riverpod(keepAlive: true)
IPostRepository iPostRepository(IPostRepositoryRef ref) =>
    throw UnimplementedError();
