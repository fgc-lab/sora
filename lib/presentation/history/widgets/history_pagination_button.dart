import 'package:flutter/material.dart';
import 'package:sora/utils/palette.dart';

class HistoryPaginationButton extends StatelessWidget {
  const HistoryPaginationButton({
    required this.title,
    required this.onPressed,
    super.key,
    this.color,
  });

  final String title;

  final VoidCallback onPressed;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(vertical: 15),
        ),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        side: WidgetStateProperty.all<BorderSide>(
          const BorderSide(color: Palette.grey),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Palette.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
