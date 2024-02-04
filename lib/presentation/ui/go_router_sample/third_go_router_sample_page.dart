import 'package:flutter/material.dart';

import 'first_go_router_sample_page.dart';

class ThirdGoRouterSamplePage extends StatelessWidget {
  const ThirdGoRouterSamplePage({
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
          title: const Text('Third Page'),
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
              Text(stringArg2),
            ],
          ),
        ),
      );
}
