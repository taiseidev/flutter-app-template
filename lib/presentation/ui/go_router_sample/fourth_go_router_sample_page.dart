import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router.dart';
import 'first_go_router_sample_page.dart';

class FourthGoRouterSamplePage extends StatelessWidget {
  const FourthGoRouterSamplePage({
    required this.stringArg,
    required this.intArg,
    required this.doubleArg,
    required this.boolArg,
    required this.enumArg,
    required this.customArg,
    required this.stringArg2,
    super.key,
  });

  final String stringArg;
  final int intArg;
  final double doubleArg;
  final bool boolArg;
  final SampleEnum enumArg;
  final CustomClassForGoRouterSample customArg;
  final String stringArg2;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Fourth Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(stringArg),
              Text(intArg.toString()),
              Text(doubleArg.toString()),
              Text(boolArg.toString()),
              Text(enumArg.name),
              Text(customArg.name),
              Text(customArg.index.toString()),
              ElevatedButton(
                onPressed: () => ThirdGoRouterSampleRoute(
                  stringArg: stringArg,
                  intArg: intArg,
                  doubleArg: doubleArg,
                  boolArg: boolArg,
                  enumArg: enumArg,
                  $extra: CustomClassForGoRouterSample(
                    name: customArg.name,
                    index: customArg.index,
                  ),
                  stringArg2: stringArg2,
                ).go(context),
                child: const Text('ThirdPageに戻る（popとの違いチェック）'),
              ),
              ElevatedButton(
                onPressed: () => context.pop(),
                child: const Text('popを使用'),
              ),
              ElevatedButton(
                onPressed: () => const FirstGoRouterSampleRoute().go(context),
                child: const Text('FirstPageに遷移'),
              ),
            ],
          ),
        ),
      );
}
