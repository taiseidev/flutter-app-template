import 'package:flutter/material.dart';

import 'first_go_router_sample_page.dart';

class SecondGoRouterSamplePage extends StatelessWidget {
  const SecondGoRouterSamplePage({
    super.key,
    required this.stringArg,
    required this.intArg,
    required this.doubleArg,
    required this.boolArg,
    required this.enumArg,
    required this.customArg,
  });

  final String stringArg;
  final int intArg;
  final double doubleArg;
  final bool boolArg;
  final SampleEnum enumArg;
  final CustomClassForGoRouterSample customArg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
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
          ],
        ),
      ),
    );
  }
}