import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../extensions/async_value_extension.dart';
import '../../../extensions/widget_ref_extension.dart';
import '../../router/router.dart';
import 'post_page_controller.dart';

class PostPage extends ConsumerWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postPageControllerProvider);

    ref.handleAsyncValue<void>(
      postPageControllerProvider,
      completeMessage: '投稿一覧を取得しました。',
      complete: (context, _) async {
        debugPrint('完了');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('投稿一覧'),
      ),
      body: posts.handleAsyncValue(
        (data) {
          return Scrollbar(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final post = data[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Material(
                    color: Colors.grey,
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      onTap: () =>
                          PostDetailSampleRoute(postId: post.id).go(context),
                      child: ListTile(
                        title: Text(post.title),
                        subtitle: Text(post.body),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
