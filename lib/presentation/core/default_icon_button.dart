import 'package:flutter/material.dart';
import 'package:sora/utils/palette.dart';

class DefaultIconButton extends StatelessWidget {
  const DefaultIconButton({
    required this.icon,
    required this.onPressed,
    super.key,
    this.disabled = false,
  });

  final IconData icon;

  final VoidCallback onPressed;

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      icon: Icon(icon, color: disabled ? Palette.grey : Palette.black),
      onPressed: disabled ? null : onPressed,
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
