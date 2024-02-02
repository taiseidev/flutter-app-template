import 'package:flutter/material.dart';
import 'package:flutter_app_template/extensions/async_value_extension.dart';
import 'package:flutter_app_template/extensions/widget_ref_extension.dart';
import 'package:flutter_app_template/presentation/post/post_page_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      body: posts.handleAsyncValue(
        (data) {
          return Scrollbar(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final post = data[index];
                return Card(
                  child: ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
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
