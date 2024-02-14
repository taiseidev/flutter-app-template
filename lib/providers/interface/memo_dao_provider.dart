import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/local/db/memo_dao.dart';

part 'memo_dao_provider.g.dart';

@Riverpod(keepAlive: true)
MemoDao memoDao(MemoDaoRef ref) => throw UnimplementedError();
