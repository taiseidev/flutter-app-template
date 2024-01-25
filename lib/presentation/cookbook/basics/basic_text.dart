import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class BasicText extends StatelessWidget {
  const BasicText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white),
    );
  }
}

@widgetbook.UseCase(
  name: 'with green color',
  type: BasicText,
)
Widget basicTextUseCase(BuildContext context) {
  const text = 'テスト';
  return const BasicText(text: text);
}
