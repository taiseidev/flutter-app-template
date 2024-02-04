import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../extensions/async_value_extension.dart';
import 'post_detail_page_controller.dart';

class PostDetailPage extends ConsumerWidget {
  const PostDetailPage({
    required this.postId,
    super.key,
  });

  final int postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(postDetailPageControllerProvider(postId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('投稿詳細画面'),
      ),
      body: detail.handleAsyncValue(
        (value) => Column(
          children: [
            Text(value.$1.title),
            Text(value.$1.body),
            Expanded(
              child: ListView.builder(
                itemCount: value.$2.length,
                itemBuilder: (context, index) {
                  final comment = value.$2[index];
                  return Card(
                    child: ListTile(
                      title: Text(comment.name),
                      subtitle: Column(
                        children: [
                          Text(comment.email),
                          Text(comment.body),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
