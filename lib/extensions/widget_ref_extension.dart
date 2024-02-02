import 'package:flutter/material.dart';
import 'package:flutter_app_template/exceptions/app_exception.dart';
import 'package:flutter_app_template/presentation/widget/errors/async_error_widget.dart';
import 'package:flutter_app_template/providers/loading_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app.dart';

extension WidgetRefEx on WidgetRef {
  void handleAsyncValue<T>(
    ProviderListenable<AsyncValue<T>> asyncValueProvider, {
    void Function(BuildContext context, T data)? complete,
    String? completeMessage,
  }) =>
      listen<AsyncValue<T>>(
        asyncValueProvider,
        (_, next) async {
          final loadingNotifier = read(loadingNotifierProvider.notifier);
          if (next.isLoading) {
            loadingNotifier.show();
            return;
          }

          next.when(
            data: (data) async {
              loadingNotifier.hide();

              // 完了メッセージがあればスナックバーを表示する
              if (completeMessage != null) {
                final messengerState =
                    read(scaffoldMessengerKeyProvider).currentState;
                messengerState?.showSnackBar(
                  SnackBar(
                    content: Text(completeMessage),
                  ),
                );
              }
              complete?.call(read(navigatorKeyProvider).currentContext!, data);
            },
            error: (error, _) async {
              loadingNotifier.hide();

              // エラーが発生したらエラーダイアログを表示する
              await showDialog<void>(
                  context: read(navigatorKeyProvider).currentContext!,
                  builder: (context) => AsyncErrorWidget(
                        exception: error as AppException,
                      ));
            },
            loading: loadingNotifier.show,
          );
        },
      );
}
