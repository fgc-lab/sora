import 'package:flutter/material.dart';
import 'package:sora/utils/palette.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.title,
    required this.isLoading,
    required this.onPressed,
    super.key,
    this.color,
    this.width,
    this.height,
    this.disabled = false,
  });

  final String title;

  final bool isLoading;

  final VoidCallback? onPressed;

  final Color? color;

  final double? width;

  final double? height;

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: isLoading || disabled ? null : onPressed,
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          backgroundColor: WidgetStateProperty.resolveWith(
            (_) => disabled ? Palette.greyLight : color ?? Palette.black,
          ),
          foregroundColor: WidgetStateProperty.resolveWith(
            (states) => Colors.white,
          ),
        ),
        child:
            isLoading
                ? const SizedBox.square(
                  dimension: 24,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
                : Text(title, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
