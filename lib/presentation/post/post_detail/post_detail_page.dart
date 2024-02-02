import 'package:flutter/material.dart';
import 'package:flutter_app_template/extensions/async_value_extension.dart';
import 'package:flutter_app_template/presentation/post/post_detail/post_detail_page_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailPage extends ConsumerWidget {
  const PostDetailPage({
    super.key,
    required this.postId,
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
            Text(value.title),
            Text(value.body),
          ],
        ),
      ),
    );
  }
}
