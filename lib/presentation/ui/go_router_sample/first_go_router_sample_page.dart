import 'package:flutter/material.dart';

import '../../router/router.dart';

enum SampleEnum { enum1, enum2 }

class CustomClassForGoRouterSample {
  const CustomClassForGoRouterSample({
    required this.name,
    required this.index,
  });

  final String name;
  final int index;
}

class FirstGoRouterSamplePage extends StatelessWidget {
  const FirstGoRouterSamplePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('First Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => const SecondGoRouterSampleRoute(
                  stringArg: 'テスト',
                  intArg: 1,
                  doubleArg: 1,
                  boolArg: true,
                  enumArg: SampleEnum.enum1,
                  $extra: CustomClassForGoRouterSample(
                    name: 'サンプル',
                    index: 1,
                  ),
                ).go(context),
                child: const Text('SecondPageへ'),
              ),
              ElevatedButton(
                /// ThirdPageはSecondPageのサブルートのため、引数を何も渡していない状態だとnullエラーになる。
                /// もしThirdPageに直接アクセスする場合は、SecondPageと同様の引数を渡してあげる必要がある。
                onPressed: () => const ThirdGoRouterSampleRoute(
                  stringArg2: '',
                ).go(context),
                child: const Text('ThirdPageへ（引数なし）'),
              ),
              ElevatedButton(
                /// SecondPageにない引数（stringArg2）を渡すことが可能
                onPressed: () => const ThirdGoRouterSampleRoute(
                  stringArg: 'テスト',
                  intArg: 1,
                  doubleArg: 1,
                  boolArg: true,
                  enumArg: SampleEnum.enum1,
                  $extra: CustomClassForGoRouterSample(
                    name: 'サンプル',
                    index: 1,
                  ),
                  stringArg2: 'SecondPageにはない引数',
                ).go(context),
                child: const Text('ThirdPageへ（引数あり）'),
              ),
              ElevatedButton(
                /// ThirdPageで必須のstringArg2を渡していないのでエラーになる
                onPressed: () => const FourthGoRouterSampleRoute(
                  stringArg: 'テスト',
                  intArg: 1,
                  doubleArg: 1,
                  boolArg: true,
                  enumArg: SampleEnum.enum1,
                  $extra: CustomClassForGoRouterSample(
                    name: 'サンプル',
                    index: 1,
                  ),
                ).go(context),
                child: const Text('FourthPageへ（ThirdPageの必須引数なし）'),
              ),
              ElevatedButton(
                onPressed: () => const FourthGoRouterSampleRoute(
                  stringArg: 'テスト',
                  intArg: 1,
                  doubleArg: 1,
                  boolArg: true,
                  enumArg: SampleEnum.enum1,
                  $extra: CustomClassForGoRouterSample(
                    name: 'サンプル',
                    index: 1,
                  ),
                  stringArg2: '引数',
                ).go(context),
                child: const Text('FourthPageへ（ThirdPageの必須引数）'),
              ),
            ],
          ),
        ),
      );
}
