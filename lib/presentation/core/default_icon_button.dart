import 'package:flutter/material.dart';
import 'package:sora/utils/palette.dart';

class DefaultIconButton extends StatelessWidget {
  const DefaultIconButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final IconData icon;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      icon: Icon(icon),
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        side: WidgetStateProperty.all<BorderSide>(
          const BorderSide(color: Palette.grey),
        ),
      ),
    );
  }
}
