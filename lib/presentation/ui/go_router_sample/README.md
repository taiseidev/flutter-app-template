go_routerとgo_router_builderのサンプルコードを格納するディレクトリ

メモ

goメソッド

```
first-route
     |
second-route - third-route - fourth-route
```

- first-routeからsecond-routeに遷移
・同階層のためfirst-routeが破棄されてsecond-routeのみになる

- first-routeからthird-routeに遷移
・second-routeが間に差し込まれ、first-routeは破棄されてsecond-routeの上にthird-routeがスタックされる
・もしsecond-routeに必須の引数を渡さずにthird-routeに遷移した場合nullエラーが発生する
・nullエラーを発生させず、third-routeに遷移する場合はsecond-routeで必須の値を渡す必要がある

**重要**
・もしネストしたサブルートに遷移する場合は、そのルートの必須の引数を全て渡してあげる必要がある
・$extraでカスタムクラスを渡すだけだと、Widgetがリビルドされた際にnullになる可能性があるため、extra_codecを追加する必要がある。

https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/extra_codec.dart
