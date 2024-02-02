import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class GradientTextComponent extends StatelessWidget {
  const GradientTextComponent({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      // https://flutter.salon/widget/blendmode/
      blendMode: BlendMode.modulate,
      shaderCallback: (Rect rect) {
        return const LinearGradient(
          colors: [
            Colors.blue,
            Colors.green,
            Colors.yellow,
          ],
        ).createShader(rect);
      },
      child: Text(
        text,
        style: const TextStyle(
          inherit: false,
          color: Colors.white,
        ),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'with green color',
  type: GradientTextComponent,
)
Widget basicTextUseCase(BuildContext context) {
  const text = 'テスト';
  return const GradientTextComponent(text: text);
}
