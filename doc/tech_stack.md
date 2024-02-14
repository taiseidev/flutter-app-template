# Tech Stack

## 環境分け
・[Flutter の環境分けの新時代](https://zenn.dev/blendthink/articles/392607db0a65dd)

## FVM

・[Flutter SDKをバージョン管理できるfvmでFlutterを使う](https://zenn.dev/welchi/articles/d8f120adeebc7a85ed17)
・[FVMでFlutter SDKのバージョンをプロジェクト毎に管理する](https://zenn.dev/altiveinc/articles/flutter-version-management)

## Github
- dependabot

依存しているライブラリに脆弱性があったら教えてくれたり、ライブラリのバージョンを修正したプルリクエストを作成してくれるボット

[【Flutter】dependabotを導入したので手順と使い方を解説してみる](https://blog.dalt.me/3354)

- Github Actions

[Flutter開発で使っているGitHub Actionsのワークフロー](https://zenn.dev/yorifuji/articles/flutter-github-actions-template)

## Local Storage
・[iOSでflutter_secure_storageに保存したものはアンインストールしても消えない](https://zenn.dev/beeeyan/articles/3f338941b45197)

## riverpod_graph
・[riverpod_graph を手軽に実行する](https://zenn.dev/noboru_i/articles/ea02828f33deaa)

## 多言語対応
・[【Dart / Flutter】Slangで国際化対応する](https://zenn.dev/altiveinc/articles/88b2a67058cbcf)

## Document
・[Dart のドキュメンテーションについて](https://zenn.dev/team_soda/articles/dart-documentation)

## import
・[Flutterおすすめのimport周りの設定](https://zenn.dev/k9i/articles/34dab7d09b29a1#import_sorter%E3%81%AF%E4%BD%BF%E3%82%8F%E3%81%AA%E3%81%84)
・[Flutterパッケージの更新に役立つTips](https://zenn.dev/k9i/articles/ffa716e272afaa)

## Dialog, SnackBar, Loading
・[【Flutter】AsyncValue を使ってローディング表示、ダイアログ表示、スナックバー表示の共通化をしてみた](https://zenn.dev/flutteruniv_dev/articles/20221214-090833-flutter-async-value)

## GoRouter
・[【Flutter】 go_routerの使い方](https://zenn.dev/channel/articles/af4ffd813b1424)
・[【Flutter】go_router をタイプセーフに使う方法【go_router_builder】](https://zenn.dev/flutteruniv_dev/articles/20220801-135028-flutter-go-router-builder)
・[go_routerで自作Classを渡す方法](https://zenn.dev/minma/articles/2b6510c899be6d)
`$extra`でカスタムクラスを渡しただけだと下記警告が発生するためcodecを作成する必要がある

```dart
[GoRouter] An extra with complex data type CustomClassForGoRouterSample is provided without a codec. Consider provide a codec to GoRouter to prevent extra being dropped during serialization.
```

## 命名

命名で迷ったら下記サービスを活用する

・[codic](https://codic.jp/)

## Local DB
・[【Flutter】ローカル DB パッケージの Isar Database の使い方](https://zenn.dev/flutteruniv_dev/articles/20220607-061331-flutter-isar)
