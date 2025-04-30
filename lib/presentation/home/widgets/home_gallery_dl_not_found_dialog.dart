import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/home/home_bloc.dart';
import 'package:sora/utils/palette.dart';

class HomeGalleryDLNotFoundDialog extends StatelessWidget {
  const HomeGalleryDLNotFoundDialog({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Palette.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
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
                    recognizer: TapGestureRecognizer()..onTap = onPressed,
                  ),
                  const TextSpan(text: ' first then try again.'),
                ],
                style: const TextStyle(fontSize: 18, color: Palette.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
