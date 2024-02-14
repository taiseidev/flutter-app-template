import '../../../data/models/request/memo/memo.dart';

abstract class IMemoRepository {
  Future<List<Memo>> fetchAllMemos();
}
