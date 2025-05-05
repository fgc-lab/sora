import 'package:flutter/material.dart';
import 'package:sora/utils/palette.dart';

class ArchivesPaginationButton extends StatelessWidget {
  const ArchivesPaginationButton({
    required this.title,
    required this.onPressed,
    super.key,
    this.color,
    this.isCurrentPage = false,
  });

  final String title;

  final VoidCallback onPressed;

  final Color? color;

  final bool isCurrentPage;

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
        backgroundColor: WidgetStateProperty.all<Color>(
          isCurrentPage ? Palette.black : Palette.white,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isCurrentPage ? Palette.white : Palette.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
