import '../../models/request/memo/memo.dart';

abstract class MemoDao {
  Future<List<Memo>> fetchAllMemos();
}
