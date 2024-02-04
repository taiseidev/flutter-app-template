import 'package:flutter/material.dart';

import 'common_paging_view.dart';
import 'page_based_sample_notifier.dart';

class PageBasedView extends StatelessWidget {
  const PageBasedView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('ページング')),
        body: CommonPagingView(
          provider: pageBasedSampleNotifierProvider,
          contentBuilder: (data, endItem) => ListView.builder(
            key: const PageStorageKey('pageBasedView'),
            itemCount: data.items.length + (endItem != null ? 1 : 0),
            itemBuilder: (context, index) {
              if (endItem != null && index == data.items.length) {
                return endItem;
              }

              return ListTile(
                title: Text(data.items[index].id.toString()),
                subtitle: Text(data.items[index].id.toString()),
              );
            },
          ),
        ),
      );
}
