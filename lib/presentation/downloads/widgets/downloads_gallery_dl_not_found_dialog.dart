import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sora/presentation/core/default_button.dart';
import 'package:sora/utils/palette.dart';

class DownloadsGalleryDLNotFoundDialog extends StatelessWidget {
  const DownloadsGalleryDLNotFoundDialog({
    required this.onLinkPressed,
    required this.onRestartPressed,
    super.key,
    this.isLoading = false,
  });

  final VoidCallback onLinkPressed;

  final VoidCallback onRestartPressed;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Palette.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: SizedBox(
          width: mediaQuery.width / 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    'gallery-dl not found',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Palette.black),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: 'Please setup '),
                    TextSpan(
                      text: 'gallery-dl',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      mouseCursor: SystemMouseCursors.click,
                      recognizer: TapGestureRecognizer()..onTap = onLinkPressed,
                    ),
                    const TextSpan(text: ' first then try again.'),
                  ],
                  style: const TextStyle(fontSize: 18, color: Palette.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DefaultButton(
                  title: 'Retry',
                  isLoading: isLoading,
                  onPressed: onRestartPressed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
