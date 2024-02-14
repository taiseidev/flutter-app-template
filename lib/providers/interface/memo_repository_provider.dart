import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../domain/repository_interfaces/local/i_memo_repository.dart';

part 'memo_repository_provider.g.dart';

@Riverpod(keepAlive: true)
IMemoRepository memoRepository(MemoRepositoryRef ref) =>
    throw UnimplementedError();
