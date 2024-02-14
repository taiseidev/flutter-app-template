import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../models/request/memo/memo.dart';
import '../../memo_dao.dart';
import '../isar_instance.dart';

part 'isar_memo_dao.g.dart';

@Riverpod(keepAlive: true)
IsarMemoDao isarMemoDao(IsarMemoDaoRef ref) =>
    IsarMemoDao(ref.watch(isarProvider));

class IsarMemoDao implements MemoDao {
  const IsarMemoDao(this._isar);

  final Isar _isar;

  @override
  Future<List<Memo>> fetchAllMemos() async {
    // 更新日時の降順で全件返す
    final allMemos = await _isar.memos.where().sortByUpdatedAtDesc().findAll();

    // IsarLink でリンクされているカテゴリを読み込む必要がある
    for (final memo in allMemos) {
      await memo.category.load();
    }
    return allMemos;
  }
}
