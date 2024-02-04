import 'package:flutter/material.dart';

import '../../res/theme/extensions/common_button_theme.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.style,
  });

  final String text;
  final VoidCallback onPressed;
  final CommonButtonTheme? style;

  @override
  Widget build(BuildContext context) {
    final theme = context.commonButtonTheme;
    final backgroundColor = style?.background ?? theme.background;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
