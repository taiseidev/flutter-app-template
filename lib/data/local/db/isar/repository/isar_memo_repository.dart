import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../domain/repository_interfaces/local/i_memo_repository.dart';
import '../../../../models/request/memo/memo.dart';
import '../../memo_dao.dart';

part 'isar_memo_repository.g.dart';

@Riverpod(keepAlive: true)
IMemoRepository memoRepository(MemoRepositoryRef ref) =>
    throw UnimplementedError();

class IsarMemoRepository implements IMemoRepository {
  const IsarMemoRepository(this._dao);

  final MemoDao _dao;

  @override
  Future<List<Memo>> fetchAllMemos() async {
    return _dao.fetchAllMemos();
  }
}
