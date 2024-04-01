# flutter_app_template

## 環境構築

・[fvmのFlutterをデフォルトで使用するよう設定する。](https://zenn.dev/welchi/articles/d8f120adeebc7a85ed17#fvm%E3%81%A7%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%97%E3%81%9Fflutter%E3%82%92%E3%80%81%E3%83%87%E3%83%95%E3%82%A9%E3%83%AB%E3%83%88%E3%81%A8%E3%81%97%E3%81%A6%E4%BD%BF%E3%81%86)

## 定数管理
定数管理については[slang](https://pub.dev/packages/slang)パッケージを使用し、[lib/i18n](./lib/i18n/)に関連ファイルをまとめています。（[多言語対応](##多言語対応)も同様です）<br>
使い方は[lib/i18n/example.i18n.json](./lib/i18n/example.i18n.json)ファイルを参考に、下記のように使用してください。

```dart
    final title = constants.example.mainScreen.title;
    final highScore = constants.example.game.end.highScore(score: 32.6);
    final item = constants.example.items(n: 1);
    final step = constants.example.intro.step[3];
```
[slang](https://pub.dev/packages/slang)の設定については[slang.yaml](./slang.yaml)を参照してください。

## 多言語対応
[定数管理](##定数管理)を参照してください。
